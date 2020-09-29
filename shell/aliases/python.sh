alias prettyjson='python -m json.tool'

# Python3
# alias python=/usr/local/bin/python3
# alias pip=/usr/local/bin/pip3

# Use pyenv instead of hardcoding alias ^
# set version in install script
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
