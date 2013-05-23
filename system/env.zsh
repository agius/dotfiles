if type mate >/dev/null ; then
  export EDITOR="mate"
elif type emacs>/dev/null ; then
  export EDITOR="emacs"
elif type nano >/dev/null ; then
  export EDITOR="nano"
elif type vi >/dev/null ; then
  export EDITOR="vi"
fi