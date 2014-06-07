# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias code=~/Code
alias caskroom=/usr/local/Library/Taps/caskroom/homebrew-cask/
alias dotfiles=~/.dotfiles
alias dot=~/.dotfiles/bin/dot