#!/bin/env bash
source $(dirname $0)/config.sh

# Удаление контейнеров и образов сделанных проектом
$docker ps -q -a -f name=$docker_container | xargs -r $docker rm -f
$docker images -q -f reference=$docker_image | xargs -r $docker rmi -f

$docker build --tag $docker_image $dockerfile_dir
