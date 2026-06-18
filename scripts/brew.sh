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
brew install bat
brew install fd
brew install fzf
brew install htop
brew install jq
brew install ripgrep
brew install tree
brew install zoxide

# Git
brew install git
brew install git-lfs
brew install gh
brew install gitleaks

# Web tools
brew install docker
brew install nginx
brew install oha
brew install postgresql@17
brew install redis

# Install font tools
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Media tools
brew install ffmpeg
brew install ghostscript
brew install imagemagick
brew install media-info
brew install yt-dlp

# Other useful tools
brew install 1password-cli
brew install awscli
brew install duti
brew install gnupg
brew install mackup
brew install openssl
brew install wget
brew install yq
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
