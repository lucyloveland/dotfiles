#!/bin/sh

set -ex

export RUBY_VERSION='2.1.1'
export CFLAGS=-Wno-error=shorten-64-to-32

INSTALLED_VERSION=$(cat ~/.rbenv/version)

if [ $INSTALLED_VERSION != $RUBY_VERSION ]
  then
    rbenv install $RUBY_VERSION
    rbenv global $RUBY_VERSION
    rbenv rehash
    ruby -v
  else
    echo "Ruby $RUBY_VERSION already installed unsing rbenv!"
    ruby -v
fi
