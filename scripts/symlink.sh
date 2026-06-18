#!/usr/bin/env bash
set -euo pipefail

sources=(
  .bash_profile
  .bashrc
  .functions
  .gemrc
  .gitconfig
  .gitconfig-default
  .gitconfig-github
  .hushlogin
  .mackup.cfg
  .rdebugrc
  .tool-versions
  .work_profile
  .zprofile
  .zshrc
)

# Symlink dotfiles and directories
for i in "${sources[@]}"; do
  ln -snf "$PWD/$i" "$HOME/$i"
done

# Symlink config directories
mkdir -p "$HOME/.config"
for item in "$PWD"/.config/*; do
  ln -snf "$item" "$HOME/.config/$(basename "$item")"
done
