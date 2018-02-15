if [[ $(uname -s) == 'Darwin' ]] ; then
  alias lc="launchctl"
  alias mate='subl'
  alias st=open_subl

  if osascript -e "id of application \"Typora\"" &>/dev/null ; then
    alias typora="open -a Typora $1"
  fi
fi

# if we've installed debian whois via homebrew, use that
# instead of the native Mac whois
if [[ -f /usr/local/bin/whois ]] ; then
  alias whois='/usr/local/bin/whois'
fi
