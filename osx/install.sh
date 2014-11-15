#!/bin/bash
installed=$(xcode-select -p)

if [[ $installed == "/Applications/Xcode.app/Contents/Developer" || $installed == $DEVELOPER_DIR ]]
  then
    echo "xcode command line tools already installed..."
  else
    echo "installing xcode command line tools..."
    xcode-select --install
fi
