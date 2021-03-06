#!/bin/bash

echo "Starting brew install packages"

## Check for Homebrew, install if we don't have it
#if test ! $(which brew); then
#  echo "Installing homebrew..."
#  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#fi
#
#echo "homebrew had installed"
# Update homebrew recipes
brew update

PACKAGES=(
#  coreutils findutils grep gnu-tar gnu-sed gawk
#  httpie

  autoconf
  automake
  zsh
  bash
  autojump
  tree
  zsh-you-should-use
  git


  trash-cli
  gitup
  tmux vim
  curl wget
  minikube
  podman


  graphviz
  gradle
  kotlin
  maven
  ruby
  go
  python
  node npm yarn

  mysql@5.7
  zookeeper
  redis
  rabbitmq



)

echo "Installing packages..."
brew install "${PACKAGES[@]}"

echo "Installing cask..."
CASKS=(
  iterm2
  postman
  macdown
  Caffeine
  visual-studio-code
#  qlimagesize
#  qlcolorcode
#  qlmarkdown
#  webpquicklook
#  qlstephen
#  quicklook-json
#  qlprettypatch
)
echo "Installing cask apps..."
brew install --cask "${CASKS[@]}"

echo "Cleaning up..."
brew cleanup
echo "brew install complete"
