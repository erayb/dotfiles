alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd.='cd ..'
alias cd..='cd ..'
alias la='ls -AlFGh'
alias ll='ls -lFGh'
alias l='ls -CFG'
alias ls='ls -CFG'
alias vi='vim'
alias g='git'
alias server='python -m SimpleHTTPServer'
alias git-purge='git fetch --all -p && git br --merged | grep -v "\*" | xargs -n 1 git branch -d'

GIT_PS1_SHOWDIRTYSTATE=1
PS1='\u@\h \[\033[0;36m\]\w\[\033[0m\] \[\033[1;31m\]$(__git_ps1 "%s ")\[\033[0m\]\$ '
. ~/.git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
