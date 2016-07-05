if which vim &>/dev/null; then
  export EDITOR="vim"
elif which subl &>/dev/null; then
  export EDITOR="subl"
elif which slap &>/dev/null; then
  export EDITOR='slap'
elif which emacs &>/dev/null; then
  export EDITOR="emacs"
elif which vi &>/dev/null; then
  export EDITOR="vi"
elif which nano &>/dev/null; then
  export EDITOR="nano"
fi

if [[ -n $RBENV_VERSION ]] ; then
  export RBENV_VERSION=''
fi
