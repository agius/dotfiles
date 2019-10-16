if which subl &>/dev/null; then
  export EDITOR="subl --new-window --wait"
elif which vim &>/dev/null; then
  export EDITOR="vim"
elif which slap &>/dev/null; then
  export EDITOR='slap'
elif which emacs &>/dev/null; then
  export EDITOR="emacs"
elif which vi &>/dev/null; then
  export EDITOR="vi"
elif which nano &>/dev/null; then
  export EDITOR="nano"
fi
