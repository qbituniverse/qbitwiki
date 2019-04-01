# Docker Commands

## Version
docker version

docker info

## Stats
docker stats -a

## System
### prune all unused items
docker system prune

## Login
docker login [ACR NAME] -u [UN] -p [PW]

docker logout [ACR NAME]

## Images
### list
docker image ls --all

docker images

### remove
docker rmi [IMAGE NAME]:latest
### remove all
docker rmi $(docker images -q)
### remove dangling
docker rmi $(docker images -qf dangling=true)

## Containers
### list
docker container ls --all

docker ps -a

### create
docker container create --name [CONTAINER NAME] -p [LOCAL PORT]:[CONTAINER PORT] -v [CONTAINER NAME]:/root [IMAGE NAME]:latest

### run
docker run --rm -p [LOCAL PORT]:[CONTAINER PORT] [IMAGE NAME]:latest

### stop
docker stop [CONTAINER NAME]

docker stop $(docker ps -a -q)

### remove
docker rm [CONTAINER NAME]

docker rm $(docker ps -a -q)

docker rm -f $(docker ps -aq)

### start
docker start [CONTAINER NAME]

## Volumes
### list
docker volume ls

### create
docker volume create [VOLUME NAME]

### inspect
docker volume inspect [VOLUME NAME]

### remove
docker volume rm $(docker volume ls)

docker volume rm (docker volume ls -qf dangling=true)

## File Operations
### copy
docker cp FILE [CONTAINER NAME]:/root/test.R

## Dockerfiles
docker build -t [IMAGE NAME]:latest .

docker build -t [IMAGE NAME]:latest -f dockerfiles/Dockerfile-xxxxxxxxxx .

## Bash
docker exec -i -t [CONTAINER NAME] /bin/bash