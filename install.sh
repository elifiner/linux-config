#!/bin/sh
curl https://raw.githubusercontent.com/gooli/linux-config/master/bash_aliases > ~/.bash_aliases
curl https://raw.githubusercontent.com/gooli/linux-config/master/vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/gooli/linux-config/master/gitconfig > ~/.gitconfig
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
source ~/.bash_aliases
