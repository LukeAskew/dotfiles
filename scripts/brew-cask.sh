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
  cakebrew
  charles
  dropbox
  evernote
  firefox
  font-hack
  font-meslo-for-powerline
  forklift
  google-cloud-sdk
  iterm2
  java
  kap
  logitech-options
  macdown
  mamp
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
  sequel-pro
  sketch
  sketch-toolbox
  skype
  slack
  soundflower
  spectacle
  spotify
  the-unarchiver
  tower
  transmission
  visual-studio-code
  vlc
  webpquicklook
)

brew cask install --appdir="/Applications" ${casks[@]}

# Finalize
brew cleanup
