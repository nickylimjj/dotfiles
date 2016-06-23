# aliases for convenience
alias ls='ls -G'
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

alias ews='ssh -X limjiaj2@remlnx.ews.illinois.edu'
alias vi='vim'
alias vrc='vi ~/.vimrc'
alias val='vi ~/.bash_aliases'
alias c='clear'
alias ..='cd .. && ls'
alias ...='cd ../.. && ls'
alias diff='colordiff' #installed using `brew install colordiff`
alias ll='ls -la'
alias l.='ls -a'
alias m='make'
