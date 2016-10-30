source $HOME/.antigen-git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
plugs=('bundler' 'git' 'heroku' 'node' 'rails' 'rake' 'rbenv' 'ruby' 'ssh-agent' 'sublime')
for p in $plugs; do
  antigen bundle $p
done

if type brew &>/dev/null; then
  antigen bundle brew
  antigen bundle sharat87/autoenv
fi

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agius/dotfiles themes/agius.zsh-theme

# Tell antigen that you're done.
antigen apply
