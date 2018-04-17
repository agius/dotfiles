source $HOME/.antigen-git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
plugs=('bundler' 'git' 'heroku' 'rails' 'rake' 'rbenv' 'lukechilds/zsh-nvm' 'node' 'pyenv' 'ruby' 'ssh-agent' 'sublime' 'golang')
for p in $plugs; do
  antigen bundle $p
done

if type brew &>/dev/null; then
  antigen bundle brew
fi

AUTOENV_FILE_ENTER='.env'
antigen bundle 'Tarrasch/zsh-autoenv'

# node version manager: https://github.com/lukechilds/zsh-nvm
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=false
antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agius/dotfiles themes/agius.zsh-theme

# Tell antigen that you're done.
antigen apply
