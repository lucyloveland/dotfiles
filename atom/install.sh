#!/bin/bash
packages="
  pretty-json
  coffee-lint
"

for package in $packages
do
  echo "Installing Atom package: "$package
  apm install $package
done
