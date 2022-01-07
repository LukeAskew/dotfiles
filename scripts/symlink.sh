#!/usr/bin/env bash

sources=(
  .bash_profile
  .tool-versions
  .work_profile
  .bashrc
  .cron
  .functions
  .gemrc
  .gitconfig
  .gitconfig-oss
  .gitconfig-work
  .hushlogin
  .mackup
  .mackup.cfg
  .rdebugrc
  .zprofile
  .zshrc
)

for i in ${sources[@]}; do
  ln -sf $(pwd)/$i $HOME
done
