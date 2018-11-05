alias .vimrc='vi ~/.vimrc'
alias .ba='vi ~/.bash_aliases'
alias .bp='vi ~/.bash_prompt'
alias .i3='vi ~/.config/i3/config'
alias .i3b='vi ~/.config/i3/myi3blocks.conf'
alias tk='mdless ~/dotfiles/toolkit.md'
alias vitk='vim ~/dotfiles/toolkit.md'

alias spotify="/snap/bin/spotify --force-device-scale-factor=2"
alias eip="host myip.opendns.com resolver1.opendns.com"
alias qc="vpn connect cuvpn.cuvpn.cornell.edu"

# special
alias mjwg="vi $HOME/playground/mjwg.md"

# useful aliases
alias tree="find . -print | sed -e 's;/*/;|;g;s;|; |;g'"
alias xclip="xclip -selection clipboard"
alias batt='upower -i `upower -e| grep bat`'

# class related aliases
alias j1='ssh -X cs4750@128.253.128.155' #pwd nickylim
alias j21='ssh -X nl495@ath-1.ece.cornell.edu'
alias j22='ssh -X nl495@ath-2.ece.cornell.edu'
alias j23='ssh -X nl495@ath-3.ece.cornell.edu'
alias j24='ssh -X nl495@ath-4.ece.cornell.edu'
alias j25='ssh -X nl495@ath-5.ece.cornell.edu'
alias j26='ssh -X nl495@ath-6.ece.cornell.edu'
alias j27='ssh -X nl495@ath-7.ece.cornell.edu'
alias j28='ssh -X nl495@ath-8.ece.cornell.edu'
alias j29='ssh -X nl495@ath-9.ece.cornell.edu'

# movement into folders
alias pg='cd $HOME/playground; l.'

# CTF
alias picoctf='ssh nickylimjj@2018shell3.picoctf.com'
