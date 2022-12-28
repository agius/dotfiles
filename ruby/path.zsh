# handled by antigen plugin
# export PATH="$HOME/.rbenv/shims:$PATH"

# fixes a recurring issue with ruby/rails loading objc libs after fork
# see https://github.com/rails/rails/issues/38560
# and https://bugs.ruby-lang.org/issues/14009#note-4
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# antigen rbenv plugin overrides this to reside in /usr/local/Cellar/rbenv
# which means homebrew can screw with rbenv's settings - we don't want that
export RBENV_ROOT=~/.rbenv

if brew ls --versions qt@5.5 > /dev/null; then
  export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
fi
