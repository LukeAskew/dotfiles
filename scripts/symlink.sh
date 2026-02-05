#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

sources=(
  .bash_profile
  .tool-versions
  .work_profile
  .bashrc
  .cron
  .functions
  .gemrc
  .gitconfig
  .gitconfig-default
  .gitconfig-github
  .hushlogin
  .mackup
  .mackup.cfg
  .rdebugrc
  .zprofile
  .zshrc
)

for i in "${sources[@]}"; do
  ln -snf "$DOTFILES_DIR/$i" "$HOME/$i"
done

mkdir -p "$HOME/.config"
for item in "$DOTFILES_DIR"/.config/*; do
  ln -snf "$item" "$HOME/.config/$(basename "$item")"
done

# Setup crontab
crontab "$HOME/.cron/crontab"
