source $HOME/.antigen-git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle node
antigen bundle rails
antigen bundle ruby
antigen bundle rake
antigen bundle rbenv
if which brew &>/dev/null; then
  antigen bundle brew
fi
antigen bundle ssh-agent
antigen bundle sublime
antigen bundle zeus
if which brew &>/dev/null; then
  antigen bundle sharat87/autoenv
fi

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme $ZSH/themes/agius.zsh-theme

# Tell antigen that you're done.
antigen apply
