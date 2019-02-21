#!/usr/bin/env bash
set -e

echo "Setting up Homebrew Cask..."

# Tap
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions

# Install casks
echo "Installing casks..."

casks=(
  alfred
  beardedspice
  caffeine
  charles
  evernote
  firefox
  font-hack
  font-meslo-for-powerline
  forklift
  google-backup-and-sync
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
  soundflower
  spectacle
  spotify
  the-unarchiver
  tower
  visual-studio-code
  vlc
  webpquicklook
)

brew cask install --appdir="/Applications" ${casks[@]}

# Finalize
brew cleanup
