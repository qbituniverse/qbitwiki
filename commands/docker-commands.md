# Docker Commands
## System
### Version
```
docker version
```
### Info
```
docker info
```
### Stats
```
docker stats -a
```
### Prune dangling images
```
docker system prune -f
```
### Prune all unused and dangling images
```
docker system prune -af
```
### Login
```
docker login [REPO NAME] -u [UN] -p [PW]
```
### Logout
```
docker logout [REPO NAME]
```
## Build
### Build (from Dockerfile in root context)
```
docker build -t [IMAGE NAME]:latest .
```
### Build (from Dockerfile in another folder)
```
docker build -t [IMAGE NAME]:latest -f dockerfiles/Dockerfile-xxxxxxxxxx .
```
## Images
### List used
```
docker images 
```
### List all
```
docker images --all
```
### Remove
```
docker rmi [IMAGE NAME]:latest
```
### Remove all
```
docker rmi $(docker images -q)
```
### Remove dangling
```
docker rmi $(docker images -qf dangling=true)
```
## Containers
### List running
```
docker ps
```
### List all
```
docker ps -a
```
### Create
```
docker container create --name [CONTAINER NAME] -p [LOCAL PORT]:[CONTAINER PORT] -v [CONTAINER NAME]:/root [IMAGE NAME]:latest
```
### Run
```
docker run -p [LOCAL PORT]:[CONTAINER PORT] [IMAGE NAME]:latest
```
### Run flags
- -rm : remoes container after it's stopped
- -it : runs container in intercative to allow shell into it
- -d : runs container in detached mode (without intercative shell atatched)
### Enter bash
```
docker exec -it [CONTAINER NAME] /bin/bash
```
### Enter shell
```
docker exec -it [CONTAINER NAME] sh
```
### Enter powershell
```
docker exec -it [CONTAINER NAME] powershell
```
### Start
```
docker start [CONTAINER NAME]
```
### Stop one
```
docker stop [CONTAINER NAME]
```
### Stop all
```
docker stop $(docker ps -a -q)
```
### Remove one
```
docker rm [CONTAINER NAME]
```
### Remove all
```
docker rm $(docker ps -a -q)
```
### Remove all (force running ones)
```
docker rm -f $(docker ps -aq)
```
## Volumes
### List
```
docker volume ls
```
### Create
```
docker volume create [VOLUME NAME]
```
### Inspect
```
docker volume inspect [VOLUME NAME]
```
### Remove active
```
docker volume rm $(docker volume ls)
```
### Remove all and dangling
```
docker volume rm (docker volume ls -qf dangling=true)
```
## File Operations
### Copy to container or volume
```
docker cp FILE [CONTAINER NAME]:/root/test.R
```