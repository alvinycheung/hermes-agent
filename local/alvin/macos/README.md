# Alvin macOS Hermes boot notification

Local deployment assets for Alvin's private Hermes setup.

- `hermes-boot-online-notify.sh` discovers all Hermes gateway LaunchAgents and Hermes profiles, waits for every gateway agent to be running after boot/login, then posts an Enso Prime Discord notification to the NOC channel.
- `ai.hermes.boot-online-notify.plist` installs the script as a user LaunchAgent with `RunAtLoad`.

The script intentionally loads Discord credentials from `~/.hermes/.env` at runtime; no tokens are stored in this repo.

Current install locations on Alvin's Mac:

```text
~/.hermes/scripts/hermes-boot-online-notify.sh
~/Library/LaunchAgents/ai.hermes.boot-online-notify.plist
```
