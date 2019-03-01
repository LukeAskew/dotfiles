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
brew install openssh
brew install screen

# Install zsh
brew install zsh

# Install wget with IRI support
brew install wget

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install languages and runtimes
brew install go
brew install mongodb
brew install node@10
brew install php
brew install postgresql
brew install rbenv
brew install redis
brew install sbt
brew install scala

# Install other useful binaries
brew install ack
brew install awscli
brew install diff-so-fancy
brew install ffmpeg
brew install git
brew install git-lfs
brew install graphicsmagick
brew install grep
brew install imagemagick
brew install mackup
brew install mysql
brew install openssl
brew install tree
brew install zsh

# Remove outdated versions from the cellar
brew cleanup
