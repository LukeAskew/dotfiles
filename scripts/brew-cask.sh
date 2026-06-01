#!/usr/bin/env bash
set -euo pipefail

# Check for Homebrew
if ! command -v brew &>/dev/null; then
  echo "Error: Homebrew is not installed. Run brew.sh first."
  exit 1
fi

# Keep sudo alive for the duration of the script
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing casks..."

casks=(
  # Essentials
  1password
  appcleaner
  raycast

  # Browsers
  firefox
  google-chrome
  microsoft-edge
  orion

  # Development
  docker-desktop
  iterm2
  ngrok
  tableplus
  tower
  visual-studio-code
  zed

  # AI
  claude

  # Design
  figma

  # Communication
  slack

  # Productivity
  forklift
  google-drive
  logi-options+
  obsidian

  # Media
  audacity
  handbrake-app
  imageoptim
  soundsource
  tidal
  vlc

  # Screen recording
  screen-studio
  keycastr

  # Debugging
  charles
  httpie-desktop

  # Fonts
  font-hack
  font-meslo-lg-nerd-font
)

for c in "${casks[@]}"; do
  brew install --cask --appdir="/Applications" "$c" || true
done

# Finalize
brew cleanup
