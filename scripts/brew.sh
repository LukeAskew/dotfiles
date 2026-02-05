#!/usr/bin/env bash
set -euo pipefail

# Keep sudo alive for the duration of the script
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install/update Homebrew
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
brew install bash-completion@2

# Install more recent versions of some macOS tools
brew install nano
brew install grep
brew install screen

# Modern CLI tools
brew install ripgrep
brew install fd
brew install bat
brew install jq
brew install fzf
brew install htop
brew install tree

# Git
brew install git
brew install git-lfs
brew install gh
brew install gitleaks

# Web/server tools
brew install nginx
brew install postgresql@17
brew install redis
brew install docker
brew install oha

# Install font tools
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Media tools
brew install ffmpeg
brew install imagemagick
brew install ghostscript
brew install media-info
brew install yt-dlp

# File association utility
brew install duti
brew install yq

# Other useful binaries
brew install awscli
brew install gpg
brew install mackup
brew install openssl
brew install wget
brew install zsh

# Shell prompt and plugins
brew install starship
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zsh-history-substring-search

# Version manager (replaces asdf, nvm, pyenv, etc.)
brew install mise

# GitHub Actions local runner
brew install act

# Remove outdated versions from the cellar
brew cleanup
