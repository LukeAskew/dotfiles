#!/usr/bin/env bash

set -e

sudo -v

# Create directories
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"

# Install Iterm integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

# Run scripts
sh scripts/brew.sh
sh scripts/brew-cask.sh
sh scripts/xcode.sh
sh scripts/asdf.sh
sh scripts/zsh.sh
sh scripts/macos.sh
sh scripts/symlink.sh

# Finish
source ~/.zshrc
echo "Done!"
