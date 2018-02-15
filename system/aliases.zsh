if [[ -d ~/.dotfiles ]] ; then
  alias dot='cd ~/.dotfiles'
elif [[ -d ~/dotfiles ]] ; then
  alias dot='cd ~/dotfiles'
fi

if [[ -d ~/Desktop ]] ; then
  alias desk='cd ~/Desktop'
fi

if [[ -f /usr/local/bin/howdoi ]] ; then
  alias h='function hdi(){ howdoi $* -c -n 5; }; hdi'
fi
