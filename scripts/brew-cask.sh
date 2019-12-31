#!/usr/bin/env bash
set -e

echo "Setting up Homebrew Cask..."

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install casks
echo "Installing casks..."

casks=(
  1password
  alfred
  beardedspice
  boom-3d
  caffeine
  charles
  firefox
  font-hack
  font-meslo-for-powerline
  forklift
  google-backup-and-sync
  google-chrome
  google-cloud-sdk
  imageoptim
  iterm2
  java
  logitech-options
  macdown
  opera
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
  the-unarchiver
  tower
  visual-studio-code
  vlc
  webpquicklook
  xscope
)

for c in ${casks[@]}; do
  brew cask install --appdir="/Applications" $c
done

# Finalize
brew cleanup
