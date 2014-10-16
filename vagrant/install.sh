#!/bin/bash
gem install vagrant
# Chef
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-butcher
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-ohai

# providers
vagrant plugin install vagrant-aws
vagrant plugin install vagrant-digitalocean
