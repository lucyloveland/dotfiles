#!/bin/bash

set -ex

export RUBY_VERSION='2.7.0'
export CFLAGS=-Wno-error=shorten-64-to-32

if [[ -f "/$HOME/.rbenv/version" ]]
  then
  INSTALLED_VERSION=$(cat /$HOME/.rbenv/version)
fi

if [[ $INSTALLED_VERSION != $RUBY_VERSION ]]
  then
  rbenv install $RUBY_VERSION
  rbenv global $RUBY_VERSION
  rbenv rehash
  ruby -v
else
  echo "Ruby $RUBY_VERSION already installed using rbenv!"
  echo "To reinstall, just 'rm /$HOME/.rbenv/version'"
  ruby -v
fi
