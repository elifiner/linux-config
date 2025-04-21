#!/bin/sh

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
   echo "This script must be run as root" >&2
   exit 1
fi

# Create non-root user

USER=eli
adduser --disabled-password --gecos "" $USER
adduser $USER sudo
mkdir /home/$USER/.ssh
cp .ssh/authorized_keys /home/$USER/.ssh
chown -R $USER:$USER /home/$USER/.ssh
chmod 640 /etc/sudoers
echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
chmod 440 /etc/sudoers
echo "User $USER created."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
su $USER

# Set up bash

curl -# https://raw.githubusercontent.com/elifiner/linux-config/master/bash_aliases > ~/.bash_aliases
curl -# https://raw.githubusercontent.com/elifiner/linux-config/master/vimrc > ~/.vimrc
curl -# https://raw.githubusercontent.com/elifiner/linux-config/master/gitconfig > ~/.gitconfig
curl -# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
echo 'Please run "source ~/.bash_aliases" to complete install.'
