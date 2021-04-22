#!/usr/bin/env bash
set -e

echo "Setting up Homebrew Cask..."

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/cask-drivers

# Install casks
echo "Installing casks..."

casks=(
  1password
  alfred
  boom-3d
  charles
  clocksaver
  firefox
  font-hack
  font-meslo-for-powerline
  forklift
  google-backup-and-sync
  google-chrome
  google-cloud-sdk
  imageoptim
  iterm2
  logitech-options
  microsoft-edge
  pandora
  postgres
  postman
  qlcolorcode
  qlimagesize
  qlstephen
  quicklook-json
  sequel-pro
  slack
  soundflower
  spectacle
  spotify
  tableplus
  tower
  visual-studio-code
  webpquicklook
  xscope
)

for c in ${casks[@]}; do
  brew install --cask --force --appdir="/Applications" $c
done

# Finalize
brew cleanup
