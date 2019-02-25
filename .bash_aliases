#!/bin/bash

# Filsystem
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls -lh'
alias la='ls -lah'
alias envs='env | sort'
alias ghbms='cd $HOME/git/github/benmatselby/'

# Grep colourisation
alias grep='grep --color'

# Helper to open stuff in Chrome
alias open-chrome='open -a "Google Chrome"'

# Date related aliases
alias week='date +%V'

# Handy helper to get a GUID
alias guid='uuidgen | tr "[:upper:]" "[:lower:]"'

# IP addresses
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\\  -f2"

# Vagrant
alias vssh='vagrant ssh'
alias vprune='vagrant box prune'

# Git
alias git-top='git rev-parse --show-toplevel'
alias gfo='git f origin'
alias gplm='git pull origin master'
alias gpsm='git push origin master'

# Docker
alias drasi='docker rmi $(docker images -f "dangling=true" -q)'
alias drai='docker rmi $(docker images -q)'
alias drac='docker rm $(docker ps -aq)'
alias dsac='docker stop $(docker ps -aq)'

# Get a clean fresh bash shell
alias cleanshell='env -i bash'

# Weather
alias weather='curl wttr.in'
