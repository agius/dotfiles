source $HOME/.antigen-git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
plugs=(
  'bundler'
  'fzf'
  'git'
  'golang'
  'heroku'
  'rails'
  'rake'
  'mise'
  'node'
  'ruby'
  'ssh-agent'
  'sublime'
  'cda0/zsh-tfenv'
)

for p in $plugs; do
  antigen bundle "$p"
done

AUTOENV_FILE_ENTER='.env'
antigen bundle 'Tarrasch/zsh-autoenv'

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agius/dotfiles themes/agius.zsh-theme

# Tell antigen that you're done.
antigen apply
