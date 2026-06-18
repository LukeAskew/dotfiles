#!/usr/bin/env bash
set -euo pipefail
trap 'echo "Error on line $LINENO"' ERR

# Create directories
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"

# Create files in dotfiles directory (will be symlinked later)
if [ ! -e "$HOME/.gitconfig-default" ]; then
  printf "[user]\n  email = <you@example.com>\n" > .gitconfig-default
fi

if [ ! -e "$HOME/.gitconfig-github" ]; then
  printf "[user]\n  email = <you@example.com>\n" > .gitconfig-github
fi

if [ ! -e "$HOME/.work_profile" ]; then
  touch .work_profile
fi

# Run scripts
bash scripts/symlink.sh
bash scripts/xcode.sh
bash scripts/brew.sh
bash scripts/brew-cask.sh
bash scripts/file-associations.sh
bash scripts/mise.sh
bash scripts/zsh.sh
bash scripts/macos.sh
bash scripts/jobs.sh

# Install iTerm integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

# Finish
echo "Done! Please restart your terminal."
