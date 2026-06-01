#!/usr/bin/env bash
# Set default applications for file types using duti
# Dynamically fetches extensions from GitHub Linguist
set -euo pipefail

for cmd in duti yq curl; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "Error: $cmd is not installed. Run brew.sh first."
    exit 1
  fi
done

# Default code editor - change as preferred:
# com.microsoft.VSCode, dev.zed.Zed, com.sublimetext.4, etc.
CODE_EDITOR="dev.zed.Zed"

LINGUIST_URL="https://raw.githubusercontent.com/github-linguist/linguist/main/lib/linguist/languages.yml"

echo "Fetching language extensions from GitHub Linguist..."

curl -s "$LINGUIST_URL" \
  | yq -r 'to_entries | map(.value.extensions // []) | flatten | unique | .[]' \
  | while read -r ext; do
      duti -s "$CODE_EDITOR" "$ext" all 2>/dev/null || true
      echo "  $ext -> $CODE_EDITOR"
    done

echo "Done."
