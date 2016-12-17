#!/bin/sh
curl -# https://raw.githubusercontent.com/elifiner/linux-config/master/bash_aliases > ~/.bash_aliases
curl -# https://raw.githubusercontent.com/elifiner/linux-config/master/vimrc > ~/.vimrc
curl -# https://raw.githubusercontent.com/elifiner/linux-config/master/gitconfig > ~/.gitconfig
curl -# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
echo 'Please run "source ~/.bash_aliases" to complete install.'
