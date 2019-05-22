# QbitWiki

## Description

**QbitWiki** is full of useful commands, scripts, templates and cheat-sheets, covering the following technologies: Azure, Docker, Helm Charts, Kubernetes, MongoDb.

All resources in **QbitWiki** are free, public and constantly updated with new code snippets.

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

## Deployment

Open CMD, navigate to location where you need the *qbitwiki* folders copied and run the command below. Image always has *latest* tag and it's the only tag.

```
docker create --name qbitwiki qbituniverse/qbitwiki
docker cp qbitwiki:/qbitwiki/. qbitwiki/
docker rm -fv qbitwiki
docker rmi -f qbituniverse/qbitwiki:latest
```

The end result will be a folder structure created as follows:

```
|- qbitwiki
   |- commands
   |- scripts
   |- templates
 ```
## Usage

The scripts folder contains set of powershell files that you can use to manage Docker, Kubernetes, Helm Charts and Azure.

Simply select the powershell you want to run and pass *--help* operation to discover what operations are available for a particular powershell. For instance, for Docker do this:

```
docker-env.ps1 --help
```

Running the powershell without any flag, will simply print out snapshot of the environment for a particular powershell. For instance, to view Docker environment, do this:

```
docker-env.ps1
```

The above will print out Docker system output, Images, Containers, Volumes and any Dangling resources.
