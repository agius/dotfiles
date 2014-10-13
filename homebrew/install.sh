#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

# Install homebrew packages
brew install autoconf autoenv automake brew-cask chromedriver ctags ec2-api-tools freetype gdbm git imagemagick jpeg libevent libgpg-error libksba libpng libtool libyaml node openssl ossp-uuid pcre pkg-config postgresql pstree qt rbenv readline redis ruby-build s3cmd ssh-copy-id the_silver_searcher tmux tree watch wget xz zsh

exit 0