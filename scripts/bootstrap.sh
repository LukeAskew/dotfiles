#!/usr/bin/env bash

# Create directories
mkdir -p "/usr/local/lib"
mkdir -p "/usr/local/bin"

# Run scripts
sh scripts/brew.sh
sh scripts/brew-cask.sh
sh scripts/xcode.sh
sh scripts/zsh.sh
sh scripts/macos.sh

# Crons
crontab .cron/crontab
chmod -R +x .cron

# Finish
source ~/.zshrc
echo "Done!"
