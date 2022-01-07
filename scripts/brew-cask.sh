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
  appcleaner
  boom-3d
  chromedriver
  figma
  firefox
  font-hack
  forklift
  google-chrome
  google-cloud-sdk
  google-drive
  imageoptim
  iterm2
  logitech-camera-settings
  logitech-options
  microsoft-edge
  moom
  postman
  qlcolorcode
  qlimagesize
  qlstephen
  quicklook-json
  slack
  tableplus
  tidal
  tower
  visual-studio-code
  webpquicklook
)

for c in ${casks[@]}; do
  brew install --cask --force --appdir="/Applications" $c
done

# Finalize
brew cleanup
