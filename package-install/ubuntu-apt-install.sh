#!/bin/bash

echo "Starting apt install packages"

sudo apt-getopt update

PACKAGES=(
#  bat
#  ccat
#  desk
#  ripgrep
#  sift
#  ack
#  icdiff
#  fd
#  lnav
#  exa
#  tldr
#  xsv
#  fzf
#  pinentry-mac
#  unison
#  pv tree dos2unix
#  gnutls gnu-indent gnu-getopt  htop iftop imagemagick telnet
#  m-cli lftp
#  ansible
#  terminal-notifier
  autoconf
  automake
  cmake
  p7zip
  ranger
  zsh bash
  ruby
  httpie
  node npm yarn
  git
  tmux vim
  curl wget
  coreutils findutils grep gnu-tar gnu-sed gawk
  autojump
  trash-cli
)

echo "Installing packages..."
sudo apt-get install "${PACKAGES[@]}"

echo "apt install complete"
