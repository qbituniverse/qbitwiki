# Mongo Commands
## System
### Open
```
mongo
```
## Satabases
### List
```
show dbs
```
### Open
```
use [DB NAME]
```
## Collections
### Create
```
db.createCollection("[COLLECTION NAME]")
```
### Show
```
show collections
```
## Records
### Insert
```
db.[COLLECTION NAME].insert({item: "one", value: 1})
```
### Insert with date
```
db.[COLLECTION NAME].insert({item: "one", value: 1, created: new Date()})
```
### Select
```
db.[COLLECTION NAME].find()
```
### Select with nice output
```
db.[COLLECTION NAME].find().pretty()
```