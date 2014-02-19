if type subl >/dev/null ; then
  export EDITOR="subl"
elif type mate >/dev/null ; then
  export EDITOR="mate"
elif type vim >/dev/null ; then
  export EDITOR="vim"
elif type vi >/dev/null ; then
  export EDITOR="vi"
elif type emacs>/dev/null ; then
  export EDITOR="emacs"
elif type nano >/dev/null ; then
  export EDITOR="nano"
fi