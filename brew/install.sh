#!/usr/bin/env zsh

set -e

if test ! $(which brew); then
  printf "\n🚀 Installing the brew package manager\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

###
# Install brew packages
###
printf "\n🚀 Installing brew packages\n"
# Arm
ABREW_PACKAGES=(
  #ansible
  ag
  # awscli
  bash
  #composer
  fzf
  #gh
  git
  #go
  #golangci-lint
  #glow
  htop
  #hugo
  jq
  #k9s
  # kind
  #kubectl
  #kubectx
  #kube-ps1
  #mongosh
  #mysql-client
  # multipass
  # nmap
  nvm
  #php
  #planetscale/tap/pscale
  pyenv
  #reattach-to-user-namespace
  # shellcheck
  #starship
  #terraform
  # terragrunt
  # tflint
  # tmux
  # tmuxinator
  # wget
)
for pkg in "${ABREW_PACKAGES[@]}"; do printf "installing %s\n" "${pkg}" && brew install "${pkg}"; done

# Casks
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-hack-nerd-font

# Some tidying up
brew autoremove -v
brew cleanup --prune=all
