#!/usr/bin/env bash

echo "Installing antigen"
sh -c "$(curl -L git.io/antigen > ~/.antigen.zsh)"

echo "Switching default to zsh..."
chsh -s $(which zsh)
