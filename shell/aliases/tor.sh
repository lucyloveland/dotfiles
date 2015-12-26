#!/bin/bash
alias start-tor="docker run -i -t --rm -e DISPLAY=$(/usr/sbin/ipconfig getifaddr en0):0 paulczar/torbrowser"
