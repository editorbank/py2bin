#!/bin/env bash
[ -z "$@" ] && echo "Use: $0 <file.py>" && exit 1

docker=podman
docker_image=docker.io/editorbank/py2bin
docker_container=py2bin

$docker ps -q -a -f name=$docker_container | xargs -r $docker rm -f
$docker run -it --rm -v $PWD:/pwd --name $docker_container $docker_image /compile.sh $@
