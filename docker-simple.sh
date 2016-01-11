#!/bin/bash



docker-simple(){

readonly currentdir=$(pwd)
readonly confdir="/home/fox/.docker/machine/machines"
readonly ca="/home/fox/.docker/ca"

create() {
    mkdir -p $confdir/$1
}

get-path(){
    echo $confdir/$1
}


docker_run(){
    docker $1 
  
}

use-env(){
    eval $(cat $confdir/$1/config)
    DOCKER_CURRENT=$1
}

list-docker(){
    ls $confdir
}

clear-env(){
    unset DOCKER_CERT_PATH
    unset DOCKER_HOST
    unset DOCKER_TLS_VERIFY
}

get-current(){
    if [ -z "$DOCKER_CURRENT" ]; then echo "No active env"; else echo $DOCKER_CURRENT; fi
}

 case $1 in
 # help)
 #     usage
 #     exit 0
 #     ;;
 run)
    docker_run $2
     ;;
 list)
    list-docker
     ;;
 activate)
     use-env $2
     ;;
 current)
     get-current
     ;;
 deactivate)
     clear-env
     ;;
esac
}


