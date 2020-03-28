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
alias server='python -m SimpleHTTPServer 5555'
alias git-purge='git fetch --all -p && git br --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'

# Headers-only curl
hurl() {
  curl -s -D - $1 -o /dev/null
}

GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\033[0;36m\]\w\[\033[0m\] \[\033[1;31m\]$(__git_ps1 "%s ")\[\033[0m\]\$ '
. ~/.git-prompt.sh

_Z_CMD='j'
. `brew --prefix`/etc/profile.d/z.sh

[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion

[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local
