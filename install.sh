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

printf "\ninstalling vscode\n"
./bin/dotfiles install vscode
printf "\ninstalling git\n"
./bin/dotfiles install git
printf "\ninstalling github\n"
./bin/dotfiles install github
#./bin/dotfiles install node
# ./bin/dotfiles install mongodb
# ./bin/dotfiles install php
# ./bin/dotfiles install starship
# ./bin/dotfiles install tmux
printf "\ninstalling vim\n"
./bin/dotfiles install vim
printf "\nfinished\n"
