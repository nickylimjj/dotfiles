if ! { [ -n "$TMUX" ]; } then
    neofetch
    echo -e ""
    echo -e "tm l\t- list tmuxinator sessions"
    echo -e ".vimrc\t- opens .vimrc"
    echo -e ".ba\t- opens .bash_aliases"
    echo -e ".bp\t- opens .bash_prompt"
    echo -e ""
fi

