# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils
# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
install bash
install bash-completion

# Install zsh
install zsh

# git
install git
install git-flow

# Install wget with IRI support
install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
# install ringojs
# install narwhal

# Install more recent versions of some OS X tools
install vim --override-system-vi
install homebrew/dupes/grep
install homebrew/php/php55 --with-gmp

# Install other useful binaries
install ack
install gawk
install hashpump
install htop
install hub
install lynx
install nmap
install node # This installs `npm` too using the recommended installation method
install docker
install p7zip
install pigz
install pv
install rename
install rbenv
install ruby-build
install sqlmap
install tree
install ucspi-tcp # `tcpserver` et al.
install webkit2png

install homebrew/versions/lua52

# Install brew-cask to enable installing native apps
install caskroom/cask/brew-cask

# Install Casks
cask install google-chrome
#cask install sublime-text
cask install atom
cask install iterm2
cask install firefox
cask install netbeans
cask install seashore
cask install skype
cask install google-hangouts
cask install virtualbox
cask install vagrant
cask install logitech-myharmony
cask install silverlight
cask install sourcetree
cask install hive
cask install vlc

# Remove outdated versions from the cellar
cleanup
