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
  eqmac
  evernote
  firefox
  font-hack
  font-meslo-for-powerline
  forklift
  google-backup-and-sync
  google-chrome
  google-cloud-sdk
  homebrew/cask-drivers/logitech-options
  imageoptim
  iterm2
  java
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
