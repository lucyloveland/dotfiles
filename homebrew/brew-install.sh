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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Leverage Brewdler to install non-ruby dependencies from homebrew
gem install brewdler

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install homebrew packages
brewdle install

# Remove outdated versions from the cellar
brew cleanup

exit 0
