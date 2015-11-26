export PATH="./node_modules/.bin:./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH/bin:/usr/libexec:/Applications/Sublime Text.app/Contents/SharedSupport/bin:~/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

if which brew &>/dev/null; then
  export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages
fi