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
  echo "  Installing Homebrew for you. Please press [ENTER] to begin install."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install brew-cask-upgrade because brewdle doesn't support updating casks
if [ ! -x /usr/local/bin/brew-cask-upgrade ];
then
  sudo curl -o /usr/local/bin/brew-cask-upgrade https://gist.githubusercontent.com/c00kiemon5ter/3730069b6c920841a3ca/raw/741f07950302e27aff3c8c2eba71035cfec8360f/brew-cask-upgrade.sh
  chmod +x /usr/local/bin/brew-cask-upgrade
fi

# Leverage Brewdler to install non-ruby dependencies from homebrew
brew tap Homebrew/bundle

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install homebrew packages
brew bundle

# Install outdated casks
brew-cask-upgrade

# Remove outdated versions from the cellar
brew cleanup

exit 0
