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

# airport command-line util
# for use with aircrack-ng
if [[ -f /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport ]] ; then
  alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
fi
