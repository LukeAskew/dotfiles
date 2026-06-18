#!/usr/bin/env bash
set -euo pipefail

LAUNCH_AGENTS="$HOME/Library/LaunchAgents"

# Jobs to be installed
jobs=(
  "com.lukeaskew.backup"
)

# Setup
mkdir -p "$LAUNCH_AGENTS"
ln -snf "$PWD/.jobs" "$HOME/.jobs"

# Install jobs
for job in "${jobs[@]}"; do
  FILE_PATH="$LAUNCH_AGENTS/$job.plist"

  # Replace macros in the plist file
  sed "s|__HOME__|$HOME|g" "$PWD/.jobs/launchd/$job.plist" > "$FILE_PATH"

  # Reload the agent so schedule changes take effect.
  launchctl bootout "gui/$(id -u)/$job" 2>/dev/null || true
  launchctl bootstrap "gui/$(id -u)" "$FILE_PATH"

  echo "Installed job: $job"
done
