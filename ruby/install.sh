#!/bin/sh

set -ex

export RUBY_VERSION='2.1.1'
export CFLAGS=-Wno-error=shorten-64-to-32

rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
rbenv rehash
