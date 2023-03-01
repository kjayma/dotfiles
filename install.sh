#!/usr/bin/env sh

set -e

###
# Installation of packages, configurations, and dotfiles.
###
DOTFILES_LOCATION=$(pwd)
export DOTFILES_LOCATION;

###
# Install dependencies
###
./bin/dotfiles install omz
./bin/dotfiles install zsh
if [[ "$OSTYPE" =~ ^darwin]]; then
  ./bin/dotfiles install brew
else
  printf "\nOSX - skipping brew install\n"
fi

./bin/dotfiles install vscode
./bin/dotfiles install git
./bin/dotfiles install github
#./bin/dotfiles install node
# ./bin/dotfiles install mongodb
# ./bin/dotfiles install php
# ./bin/dotfiles install starship
# ./bin/dotfiles install tmux
./bin/dotfiles install vim
