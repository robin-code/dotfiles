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
#  pv tree   dos2unix
#  gnutls gnu-indent gnu-getopt  htop iftop imagemagick telnet
#  m-cli lftp
#ansible
terminal-notifier
  autoconf
  automake
  cmake
  p7zip
  ranger

  zsh bash

  gradle
  jenv
  kotlin
  maven
  ruby

  httpie
  node npm yarn
  trash-cli
  gitup
  git
  tmux vim

  sshrc
  curl wget
  install coreutils findutils grep gnu-tar gnu-sed gawk

  autojump

)

echo "Installing packages..."
brew install "${PACKAGES[@]}"


#brew cask install font-hack
#brew cask install font-fira-code
#brew cask install ngrok
#brew cask install iterm2
#brew cask install google-chrome
#brew cask install visual-studio-code
#brew cask install cyberduck
#brew cask install filezilla

echo "Installing cask..."
CASKS=(
#  dropbox
  google-chrome
  iterm2
  postman
  macdown
  Caffeine
  visual-studio-code
#  qlimagesize
#  qlcolorcode
  qlmarkdown
#  webpquicklook
#  qlstephen
  quicklook-json
#  qlprettypatch
)

echo "Installing cask apps..."
brew install --cask "${CASKS[@]}"

echo "Cleaning up..."
brew cleanup
echo "brew install complete"
