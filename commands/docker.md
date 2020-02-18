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
### System Components
```
docker system df
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
## Network
### List
```
docker network list
```
### Create
```
docker network create [NETWORK NAME]
```
### Inspect
```
docker network inspect [NETWORK NAME]
```
### Connect Container
```
docker network connect [NETWORK NAME] [CONTAINER NAME]
```
### Disconnect Container
```
docker network disconnect [NETWORK NAME] [CONTAINER NAME]
```
### Remove
```
docker network rm [NETWORK NAME]
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
### Remove unused
```
docker image prune -af
```
### Remove dangling
```
docker rmi $(docker images -qf dangling=true)
```
### Remove all
```
docker rmi $(docker images -q)
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
### Inspect
```
docker inspect [CONTAINER NAME]
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
### Remove
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
### Remove all (force running ones plus volume)
```
docker rm -fv $(docker ps -aq)
```
### Logs
```
docker logs -f [CONTAINER NAME]
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
### Remove
```
docker volume rm [VOLUME NAME]
```
### Remove unused
```
docker volume prune -f
```
### Remove dangling
```
docker volume rm (docker volume ls -qf dangling=true)
```
### Remove active
```
docker volume rm $(docker volume ls)
```
## Compose
### Up from File
```
docker-compose -f [FILE PATH to YAML] up
```
### Down from File
```
docker-compose -f [FILE PATH to YAML] down
```
## File Operations
### Copy to container or volume
```
docker cp FILE [CONTAINER NAME]:/root/test.R
```
## Docker Engine
### Switch to Linux Mode
```
[Environment]::SetEnvironmentVariable("LCOW_SUPPORTED", "1", "Machine")
Restart-Service *docker*
```
### Switch to Windows Mode
```
[Environment]::SetEnvironmentVariable("LCOW_SUPPORTED", $null, "Machine")
Restart-Service *docker*
```
