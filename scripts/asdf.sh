#!/usr/bin/env bash

# Install plugins
echo "Installing asdf plugins..."

# Golang
asdf plugin-add golang
asdf install golang 1.16.3

# Java
asdf plugin-add java
asdf install java openjdk-11

# Node.js
asdf plugin-add nodejs
asdf install nodejs 14.16.0

asdf plugin-add yarn
asdf install yarn 1.22.10

# PHP
asdf plugin-add php
brew install autoconf automake bison freetype gd gettext icu4c krb5 libedit libiconv libjpeg libpng libxml2 libzip pkg-config re2c zlib
PHP_WITHOUT_PEAR=yes asdf install php 8.0.3

# Ruby
asdf plugin-add ruby
asdf install ruby 2.7.2
