# From Jessie Frazelle, awesome Docker core contributor
#
# https://github.com/jessfraz/dotfiles/blob/a7fd3df6ab423e6dd04f27727f653753453db837/.dockerfunc
dcleanup(){
  docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

del_stopped(){
  local name=$1
  local state=$(docker inspect --format "{{.State.Running}}" $name 2>/dev/null)

  if [[ "$state" == "false" ]]; then
    docker rm $name
  fi
}