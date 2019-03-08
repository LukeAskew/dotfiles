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
  caffeine
  charles
  evernote
  firefox
  flash-player
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
  qlmarkdown
  qlprettypatch
  qlstephen
  qlvideo
  quicklook-csv
  quicklook-json
  quicklookase
  sketch
  sketch-toolbox
  slack
  spectacle
  spotify
  tableplus
  the-unarchiver
  tower
  visual-studio-code
  vlc
  webpquicklook
)

for c in ${casks[@]}; do
  brew cask install --appdir="/Applications" $c
done

# Finalize
brew cleanup
