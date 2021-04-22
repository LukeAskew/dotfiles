#!/usr/bin/env bash

# Install/update Homebrew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew..."
  brew update
fi

echo "Installing formulae..."

# Install GNU utilities
brew install coreutils
brew install moreutils
brew install findutils

# Install Bash
brew install bash
brew install bash-completion2

# Install more recent versions of some OS X tools
brew install nano
brew install grep
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries
brew install ack
brew install asdf
brew install awscli
brew install ffmpeg
brew install gpg
brew install git
brew install git-lfs
brew install graphicsmagick
brew install grep
brew install imagemagick
brew install mackup
brew install nginx
brew install openssl
brew install tree
brew install wget
brew install zsh

# Remove outdated versions from the cellar
brew cleanup
