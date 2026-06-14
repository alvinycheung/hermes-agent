#!/usr/bin/env bash
set -euo pipefail
PROMPT=""
TITLE=""
OUTPUT=""
ENV_FILE="/Users/alvin/dotfun/feel-good/.env"
while [[ $# -gt 0 ]]; do
  case "$1" in
    --prompt) PROMPT="$2"; shift 2 ;;
    --title) TITLE="$2"; shift 2 ;;
    --output) OUTPUT="$2"; shift 2 ;;
    --env) ENV_FILE="$2"; shift 2 ;;
    *) echo "Unknown option: $1"; exit 1 ;;
  esac
done
if [[ -z "$PROMPT" || -z "$OUTPUT" ]]; then
  echo "Error: --prompt and --output are required" >&2
  exit 1
fi
set -a
source "$ENV_FILE"
set +a
if [[ -z "${GOOGLE_GEMINI_API_KEY:-}" ]]; then
  echo "Error: GOOGLE_GEMINI_API_KEY not found" >&2
  exit 1
fi
mkdir -p "$(dirname "$OUTPUT")"
python3 - <<'PY' "$PROMPT" "$TITLE" "$OUTPUT"
import base64, json, os, sys, urllib.request, urllib.error
prompt,title,out=sys.argv[1:4]
api=os.environ['GOOGLE_GEMINI_API_KEY']
full=("Create a 1200x630 editorial blog hero image for dotfun. " + prompt + " No readable text in the image. Bright, clean, strategic, playful but credible B2B design.")
payload=json.dumps({"contents":[{"parts":[{"text":full}]}],"generationConfig":{"responseModalities":["IMAGE","TEXT"]}}).encode()
url=f"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-image:generateContent?key={api}"
req=urllib.request.Request(url,data=payload,headers={"Content-Type":"application/json"},method="POST")
try:
    data=json.loads(urllib.request.urlopen(req,timeout=90).read())
except urllib.error.HTTPError as e:
    raise SystemExit(f"Gemini image HTTP {e.code}: {e.read().decode('utf-8','ignore')[:400]}")
for cand in data.get('candidates',[]):
    for part in cand.get('content',{}).get('parts',[]):
        inline=part.get('inlineData') or part.get('inline_data')
        if inline and inline.get('data'):
            img=base64.b64decode(inline['data'])
            open(out,'wb').write(img)
            print(f"Final image: {out} ({len(img)} bytes)")
            raise SystemExit(0)
raise SystemExit('No image returned from Gemini')
PY
