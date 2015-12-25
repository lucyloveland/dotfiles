# Docker
eval $(docker-machine env default)

alias docker-cleanup='docker rmi $(docker images -a | grep "^<none>" | awk '"'"'{print $3}'"'"')'
