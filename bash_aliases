export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "[%s]")\$ '
export EDITOR=vim
 
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -lFA'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv --prompt="($(basename `pwd`))" && source venv/bin/activate'
alias aliases='vim ~/.bash_aliases && source ~/.bash_aliases && echo "aliases reloaded"'
alias gs='git status'
alias glg='git lg'
 
source ~/.git-prompt.sh

bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'
