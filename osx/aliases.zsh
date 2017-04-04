if [[ $(uname -s) == 'Darwin' ]] ; then
  alias lc="launchctl"
  alias mate='subl'
  alias st=open_subl

  if osascript -e "id of application \"Typora\"" &>/dev/null ; then
    alias typora="open -a Typora $1"
  fi
fi
