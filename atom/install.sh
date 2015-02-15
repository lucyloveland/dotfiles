#!/bin/bash
packages="
  pretty-json
  coffee-lint
  monokai
  autocomplete-plus
  javascript-snippets
  color-picker
  atom-jshint
"

for package in $packages
do
  echo "Installing Atom package: "$package
  apm install $package
done

# Remove all the files that will get symlinked with fresh
FILES=~/.dotfiles/atom/*
for f in $FILES
do
  if [[ $f != *install.sh ]]
    then
      file=${f##*/}
      rm -f ~/.atom/$file
      ln -s ~/.dotfiles/atom/$file ~/.atom/$file
  fi
done
