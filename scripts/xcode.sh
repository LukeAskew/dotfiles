#!/usr/bin/env bash
set -euo pipefail

if ! xcode-select --print-path &>/dev/null; then
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install &>/dev/null

  # Wait for installation to complete
  until xcode-select --print-path &>/dev/null; do
    sleep 5
  done

  echo "Xcode CLI tools installed."

  # Only switch to Xcode.app if it exists
  if [ -d "/Applications/Xcode.app" ]; then
    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    sudo xcodebuild -license accept
  fi
else
  echo "Xcode Command Line Tools already installed."
fi
