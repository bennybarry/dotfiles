alias dc="docker-compose"
alias dc-images='dc config --services | sort'
alias docker-kill-all='docker kill $(docker ps -q)'
alias docker-purge='docker rm $(docker ps -a -q)'
alias docker-purge-i='docker rmi -f $(docker images -q -f dangling=true)'
alias docker-purge-all='docker rmi $(docker images -q)'
alias docker-clean="docker-kill-all || true && docker-purge"
alias docker-stats='docker stats $(docker ps -q)'
alias docker-stop-all='docker stop $(docker ps -a -q)'

function dc-respawn() {
  for container in $@; do
    dc stop $container && dc rm -f $container && dc up -d $container
  done
  dc logs -f $@
}

function dc-ip() {
  for container in $@; do
    echo -n "$container: "
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$(basename $(pwd))-${container}-1"
  done
}

function prune-docker() {
  echo Stopping running containers...
  docker-kill-all
  docker system prune
  docker container prune -f
  docker volume prune -af
  docker network prune -f
}

function purge-docker() {
  prune-docker
  docker image prune -af
}
