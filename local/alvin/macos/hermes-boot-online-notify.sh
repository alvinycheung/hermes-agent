#!/bin/bash
set -u

# Sends a Discord boot-health notification once per macOS boot after all Hermes gateway LaunchAgents are running.
# Uses the default profile's Discord bot token so the message comes from Enso Prime.

PATH="/Users/alvin/personal/hermes-agent/venv/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
HERMES_HOME="/Users/alvin/.hermes"
ENV_FILE="$HERMES_HOME/.env"
STATE_DIR="$HERMES_HOME/state"
STATE_FILE="$STATE_DIR/boot-online-notify.last_boot"
LOG_FILE="$HERMES_HOME/logs/boot-online-notify.log"
CHANNEL_ID="1507908748771852349"
MAX_WAIT_SECONDS="${MAX_WAIT_SECONDS:-600}"
CHECK_INTERVAL_SECONDS="${CHECK_INTERVAL_SECONDS:-10}"
DRY_RUN="${DRY_RUN:-0}"
FORCE_SEND="${FORCE_SEND:-0}"

mkdir -p "$STATE_DIR" "$(dirname "$LOG_FILE")"

log() {
  printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S %Z')" "$*" >> "$LOG_FILE"
}

boot_id() {
  /usr/sbin/sysctl -n kern.boottime 2>/dev/null | /usr/bin/sed -E 's/.*sec = ([0-9]+).*/\1/'
}

current_boot="$(boot_id)"
if [[ -z "$current_boot" || "$current_boot" == *"{"* ]]; then
  current_boot="unknown-$(/usr/bin/uptime | /usr/bin/shasum | /usr/bin/awk '{print $1}')"
fi

if [[ "$FORCE_SEND" != "1" && -f "$STATE_FILE" && "$(cat "$STATE_FILE" 2>/dev/null)" == "$current_boot" ]]; then
  log "Already sent boot notification for boot_id=$current_boot; exiting."
  exit 0
fi

# Discover all Hermes gateway agents dynamically instead of hardcoding today's profiles.
# Source of truth:
#   1. ~/Library/LaunchAgents/ai.hermes.gateway*.plist = agents that should start at boot/login.
#   2. ~/.hermes/profiles/* plus default profile = known Hermes agents; missing LaunchAgents are reported.
# Output format: label|display name|profile|plist path or MISSING_PLIST
AGENTS="$(/Users/alvin/personal/hermes-agent/venv/bin/python - <<'PY'
from pathlib import Path
import plistlib

home = Path('/Users/alvin/.hermes')
launch_dir = Path('/Users/alvin/Library/LaunchAgents')

profiles = {'default'}
profiles_dir = home / 'profiles'
if profiles_dir.exists():
    for child in profiles_dir.iterdir():
        if child.is_dir() and not child.name.startswith('.'):
            profiles.add(child.name)

def display_name(profile: str) -> str:
    names = {
        'default': 'Enso Prime',
        'dot': 'Dot',
        'cso': 'CSO',
        'recall': 'Recall',
        'sentinel': 'Sentinel',
        'bottersworth': 'Bottersworth',
        'seo-page-writer': 'SEO Page Writer',
        'seo-writer': 'SEO Writer',
        'technical-seo': 'Technical SEO',
    }
    if profile in names:
        return names[profile]
    return profile.replace('-', ' ').replace('_', ' ').title()

def profile_from_args(args):
    if '--profile' in args:
        i = args.index('--profile')
        if i + 1 < len(args):
            return args[i + 1]
    return 'default'

entries = {}
for plist_path in sorted(launch_dir.glob('ai.hermes.gateway*.plist')):
    if plist_path.name == 'ai.hermes.gateway-liveness-watchdog.plist':
        continue
    try:
        with plist_path.open('rb') as f:
            data = plistlib.load(f)
    except Exception:
        continue
    label = data.get('Label') or plist_path.stem
    args = data.get('ProgramArguments') or []
    # Only count actual Hermes gateway agents, not helper/watchdog plists that happen to match the prefix.
    if 'gateway' not in args or 'run' not in args:
        continue
    profile = profile_from_args(args)
    profiles.add(profile)
    entries[profile] = (label, display_name(profile), profile, str(plist_path))

for profile in sorted(profiles):
    if profile not in entries:
        expected_label = 'ai.hermes.gateway' if profile == 'default' else f'ai.hermes.gateway-{profile}'
        entries[profile] = (expected_label, display_name(profile), profile, 'MISSING_PLIST')

for profile in sorted(entries, key=lambda p: (p != 'default', p)):
    print('|'.join(entries[profile]))
PY
)"

status_snapshot() {
  local any_missing=0
  local count=0
  while IFS='|' read -r label name profile plist_path; do
    [[ -z "${label:-}" ]] && continue
    count=$((count + 1))

    if [[ "$plist_path" == "MISSING_PLIST" ]]; then
      printf '❌ %s (%s) profile=%s has no boot LaunchAgent\n' "$name" "$label" "$profile"
      any_missing=1
      continue
    fi

    local output state pid last_exit
    output="$(/bin/launchctl print "gui/$UID/$label" 2>/dev/null || true)"
    state="$(printf '%s\n' "$output" | /usr/bin/awk -F'= ' '/state =/ {print $2; exit}')"
    pid="$(printf '%s\n' "$output" | /usr/bin/awk -F'= ' '/pid =/ {print $2; exit}')"
    last_exit="$(printf '%s\n' "$output" | /usr/bin/awk -F'= ' '/last exit code =/ {print $2; exit}')"
    if [[ "$state" == "running" && -n "$pid" ]]; then
      printf '✅ %s (%s) profile=%s pid %s\n' "$name" "$label" "$profile" "$pid"
    else
      printf '❌ %s (%s) profile=%s state=%s pid=%s last_exit=%s\n' "$name" "$label" "$profile" "${state:-missing}" "${pid:-none}" "${last_exit:-unknown}"
      any_missing=1
    fi
  done <<< "$AGENTS"

  if [[ "$count" -eq 0 ]]; then
    printf '❌ No Hermes gateway LaunchAgents or profiles discovered\n'
    return 1
  fi

  return "$any_missing"
}

elapsed=0
status=""
while true; do
  status="$(status_snapshot)"
  if status_snapshot >/dev/null; then
    break
  fi
  if (( elapsed >= MAX_WAIT_SECONDS )); then
    break
  fi
  /bin/sleep "$CHECK_INTERVAL_SECONDS"
  elapsed=$((elapsed + CHECK_INTERVAL_SECONDS))
done

if status_snapshot >/dev/null; then
  result="success"
  title="✅ Hermes boot check: all agents are back online"
else
  result="timeout"
  title="⚠️ Hermes boot check: not all agents came online within ${MAX_WAIT_SECONDS}s"
fi

message="${title}

Boot ID: ${current_boot}
Waited: ${elapsed}s

${status}"

if [[ "$DRY_RUN" == "1" ]]; then
  log "DRY_RUN result=$result boot_id=$current_boot waited=${elapsed}s"
  printf '%s\n' "$message"
  exit 0
fi

if [[ ! -f "$ENV_FILE" ]]; then
  log "ERROR: env file missing: $ENV_FILE"
  exit 1
fi

# shellcheck disable=SC1090
set -a
source "$ENV_FILE"
set +a

if [[ -z "${DISCORD_BOT_TOKEN:-}" ]]; then
  log "ERROR: DISCORD_BOT_TOKEN missing from $ENV_FILE"
  exit 1
fi

export DISCORD_BOT_TOKEN CHANNEL_ID MESSAGE="$message"
post_result="$(/Users/alvin/personal/hermes-agent/venv/bin/python - <<'PY'
import json
import os
import sys
import urllib.error
import urllib.request

token = os.environ["DISCORD_BOT_TOKEN"]
channel_id = os.environ["CHANNEL_ID"]
message = os.environ["MESSAGE"]
payload = {
    "content": message[:1900],
    "allowed_mentions": {"parse": []},
}
req = urllib.request.Request(
    f"https://discord.com/api/v10/channels/{channel_id}/messages",
    data=json.dumps(payload).encode("utf-8"),
    headers={
        "Authorization": f"Bot {token}",
        "Content-Type": "application/json",
        "User-Agent": "EnsoPrimeBootNotify/1.0",
    },
    method="POST",
)
try:
    with urllib.request.urlopen(req, timeout=30) as resp:
        body = json.loads(resp.read().decode("utf-8"))
        print(json.dumps({"ok": True, "status": resp.status, "id": body.get("id"), "channel_id": body.get("channel_id")}))
except urllib.error.HTTPError as e:
    body = e.read().decode("utf-8", errors="replace")[:500]
    print(json.dumps({"ok": False, "status": e.code, "body": body}))
    sys.exit(1)
except Exception as e:
    print(json.dumps({"ok": False, "error": str(e)}))
    sys.exit(1)
PY
)"
post_code=$?
log "Discord post result: $post_result"
if [[ "$post_code" -ne 0 ]]; then
  exit "$post_code"
fi

printf '%s' "$current_boot" > "$STATE_FILE"
log "Sent boot notification result=$result boot_id=$current_boot waited=${elapsed}s"
