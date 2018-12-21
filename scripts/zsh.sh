#!/usr/bin/env bash

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing antigen..."
curl -L git.io/antigen > ~/.antigen.zsh

echo "Switching default to zsh..."
chsh -s $(which zsh)
