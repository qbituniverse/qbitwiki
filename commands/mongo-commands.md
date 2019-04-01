# Mongo Commands

## get into the container
docker exec -it <CONTAINER NAME> bash

## get into the pod
kubectl exec -it <POD NAME> -- /bin/bash

## open MongoDb
mongo

## databases
### list
show dbs

### open
use <DB NAME>

## collections
### create
db.createCollection("<COLLECTION NAME>")

### show
show collections

## records
### insert
db.<COLLECTION NAME>.insert({item: "one", value: 1})
db.<COLLECTION NAME>.insert({item: "one", value: 1, created: new Date()})

### select
db.<COLLECTION NAME>.find()
db.<COLLECTION NAME>.find().pretty()