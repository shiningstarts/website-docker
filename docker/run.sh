#!/bin/bash
#set -e
#set -x

cd `dirname $0`

script=$0
action=$1

case $action in
  "start")
    docker-compose up -d
  ;;
  "stop")
    docker-compose stop
  ;;
  "restart")
    docker-compose stop
    clearOldContainers
    docker-compose up -d
  ;;
  "rebuild")
    docker-compose stop
    ./nginx/service rebuild
    ./php/service rebuild
  ;;
  "build")
    ./nginx/service build
    ./php/service build
  ;;
  "login")
    containerName=$2
    if [ -z "$containerName" ]; then
      echo "Usage: ./$script login $containerName"
      exit 1
    fi
    docker exec -it $containerName /bin/sh
  ;;
  *)
    echo "usage: $0 [start|stop|restart|rebuild|build]"
  ;;
esac  
