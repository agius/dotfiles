source $HOME/.antigen-git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle node
antigen bundle bower
antigen bundle rails
antigen bundle ruby
antigen bundle rake
antigen bundle bundler
antigen bundle rbenv
if which brew &>/dev/null; then
  antigen bundle brew
  antigen bundle sharat87/autoenv
fi
antigen bundle ssh-agent
antigen bundle sublime
antigen bundle zeus

if which boot2docker &>/dev/null; then
  antigen bundle unixorn/docker-helpers.zshplugin
fi

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agius/dotfiles themes/agius.zsh-theme

# Tell antigen that you're done.
antigen apply
