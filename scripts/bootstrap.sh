#!/usr/bin/env bash

set -e

# Create directories
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"

# Create files
if [ ! -e .gitconfig-oss ]; then
   echo "[user]\n  email = <you@example.com>" >> .gitconfig-oss
fi

if [ ! -e .gitconfig-work ]; then
   echo "[user]\n  email = <you@example.com>" >> .gitconfig-work
fi

if [ ! -e .work_profile ]; then
   echo "" >> .work_profile
fi

# Run scripts
sh scripts/symlink.sh
sh scripts/xcode.sh
sh scripts/brew.sh
sh scripts/brew-cask.sh
sh scripts/asdf.sh
sh scripts/zsh.sh
sh scripts/macos.sh

# Install Iterm integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

# Finish
source ~/.zshrc
echo "Done!"
