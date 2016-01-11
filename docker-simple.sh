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
}

list-docker(){
    ls $confdir
}

clear-env(){
    unset DOCKER_CERT_PATH
    unset DOCKER_HOST
    unset DOCKER_TLS_VERIFY
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

 deactivate)
     clear-env
     ;;
esac
}


