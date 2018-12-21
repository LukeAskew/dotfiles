#!/usr/bin/env bash

sources=(
  .bash_profile
  .bashrc
  .cron
  .functions
  .gitconfig
  .mackup
  .mackup.cfg
  .zshrc
)

for i in ${sources[@]}; do
  ln -sf $(pwd)/$i $HOME
done
