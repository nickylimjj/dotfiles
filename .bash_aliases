# aliases for convenience

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
alias ls='ls -G'
alias checks='brew update; brew upgrade'
alias ews='ssh -X limjiaj2@remlnx.ews.illinois.edu'
alias grep='grep --color'
alias vi='vim'
alias vrc='vi ~/.vimrc'
alias val='vi ~/.bash_aliases'
alias c='clear'
alias ..='cd ..; ls'
alias ...='cd ../..; ls'
alias diff='colordiff' #installed using `brew install colordiff`
alias ll='ls -lhrt'
alias l.='ls -a'
alias m='make'
alias jn='jupyter notebook'

# 391
alias 391='ssh -p 2222 user@localhost'
alias 391d='ssh -p 3333 user@localhost'
alias devel='~/Desktop/devel &'
alias test='~/Desktop/test_debug &'
alias testno='~/Desktop/test_nodebug &'
alias tux='socat UNIX-LISTEN:/tmp/ece391socket,fork /dev/tty.usbserial-ECE391,raw,echo=0,ispeed=9600,ospeed=9600,clocal=1,cs8,nonblock=1,ixoff=0,ixon=0,crtscts=0 &'
