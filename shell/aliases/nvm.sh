export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Tell nvm to use latest node version installed as default
nvm alias default node

# export NODE_VERSION=v25
# nvm install $NODE_VERSION
# nvm use $NODE_VERSION
