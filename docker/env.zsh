if which docker-machine &>/dev/null; then
  if docker-machine status | grep -q Running; then
    eval "$(docker-machine env default)"
  fi
fi