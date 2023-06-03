
docker=podman
docker_image=docker.io/editorbank/py2bin
docker_container=py2bin
dockerfile_dir=./py2bin.image

[ ! -z "$($docker ps -q -a -f name=$docker_container)" ] && $docker rm -f $docker_container
[ ! -z "$($docker images -q -f reference=$docker_image)" ] && $docker rmi -f $docker_image

$docker build --tag $docker_image $dockerfile_dir
