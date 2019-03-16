# handled by antigen plugin
# export PATH="$HOME/.rbenv/shims:$PATH"

# antigen rbenv plugin overrides this to reside in /usr/local/Cellar/rbenv
# which means homebrew can screw with rbenv's settings - we don't want that
export RBENV_ROOT=~/.rbenv
if brew ls --versions qt@5.5 > /dev/null; then
  export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
fi
