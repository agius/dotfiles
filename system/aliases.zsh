if [[ -d ~/.dotfiles ]] ; then
  alias dot='cd ~/.dotfiles'
elif [[ -d ~/dotfiles ]] ; then
  alias dot='cd ~/dotfiles'
fi

if [[ -d ~/Desktop ]] ; then
  alias desk='cd ~/Desktop'
fi
