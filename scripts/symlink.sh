#!/usr/bin/env bash

sources=(
  .bash_profile
  .bashrc
  .cron
  .functions
  .gemrc
  .gitconfig
  .mackup
  .mackup.cfg
  .rdebugrc
  .zshrc
)

for i in ${sources[@]}; do
  ln -sf $(pwd)/$i $HOME
done
