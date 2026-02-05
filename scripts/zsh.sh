#!/usr/bin/env bash
set -euo pipefail

# Use Homebrew zsh
ZSH_PATH="/opt/homebrew/bin/zsh"

# Fallback to system zsh if Homebrew version not found
if [ ! -x "$ZSH_PATH" ]; then
  ZSH_PATH="$(which zsh)"
fi

# Add to /etc/shells if not already there
if ! grep -q "$ZSH_PATH" /etc/shells; then
  echo "Adding $ZSH_PATH to /etc/shells..."
  echo "$ZSH_PATH" | sudo tee -a /etc/shells
fi

# Set as default shell
if [ "$SHELL" != "$ZSH_PATH" ]; then
  echo "Setting $ZSH_PATH as default shell..."
  chsh -s "$ZSH_PATH"
else
  echo "zsh is already the default shell."
fi
