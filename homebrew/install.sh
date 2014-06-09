#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

export DOT=$HOME/.dotfiles

# Check for Homebrew
if [ -z `which brew` ];
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Upgrade homebrew and Install homebrew packages
brew bundle $DOT/Brewfile 

exit 0