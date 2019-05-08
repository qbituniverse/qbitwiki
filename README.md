# QbitWiki
## Description
Guides, commands, scripts, templates, cheatsheets - Azure, Docker, Helm, Kubernetes, Mongo

## Commands

-   [Azure](https://github.com/qbituniverse/qbitwiki/blob/master/commands/azure.md)
-   [Docker](https://github.com/qbituniverse/qbitwiki/blob/master/commands/docker.md)
-   [Helm](https://github.com/qbituniverse/qbitwiki/blob/master/commands/helm.md)
-   [Kubernetes](https://github.com/qbituniverse/qbitwiki/blob/master/commands/kubernetes.md)
-   [Kubernetes Cluster](https://github.com/qbituniverse/qbitwiki/blob/master/commands/kubernetes-cluster.md)
-   [Mongo](https://github.com/qbituniverse/qbitwiki/blob/master/commands/mongo.md)

## Scripts

-   [Powershell](https://github.com/qbituniverse/qbitwiki/tree/master/scripts/powershell)

## Templates

-   [ARM Static Lookups](https://github.com/qbituniverse/qbitwiki/blob/master/templates/arm/static-lookups.md)
-   [ARM JSON Templates](https://github.com/qbituniverse/qbitwiki/tree/master/templates/arm)

## Usage
Open CMD, navigate to location where you need the "qbitwiki" folders copied and run the command below. Image always has "latest" tag.

```
docker create --name qbitwiki qbituniverse/qbitwiki
docker cp qbitwiki:/qbitwiki/. qbitwiki/
docker rm -fv qbitwiki
docker rmi -f qbituniverse/qbitwiki:latest
```

Hit Enter on the last "cls" command. The end result will be a folder structure created as follows:

```
|- qbitwiki
   |- commands
   |- scripts
   |- templates
 ```
