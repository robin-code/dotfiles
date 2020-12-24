#!/bin/bash

echo "Starting apt install packages"

sudo yum update

PACKAGES=(
  autoconf
  automake
  cmake
  p7zip
  unzip
  ranger
  zsh bash
  ruby
  httpie
  git
  tmux vim
  curl wget
  trash-cli
)

echo "Installing packages..."
sudo yum install "${PACKAGES[@]}"

echo "yum install complete"
