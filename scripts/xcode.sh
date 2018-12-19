#!/usr/bin/env bash

if ! xcode-select --print-path &> /dev/null; then
  xcode-select --install &> /dev/null

  until xcode-select --print-path &> /dev/null; do
      sleep 5
  done

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

  sudo xcodebuild -license
fi
