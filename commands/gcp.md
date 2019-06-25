# Google Cloud Platform
## Authentication
### Login with Service Account
```
gcloud auth activate-service-account [SERVICE ACCOUNT EMAIL] --key-file="[KEY FILE NAME JSON]"
```
### List Accounts
```
gcloud auth list
```

## Kubernetes Engine
### List Kubernetes Clusters
```
gcloud container clusters list
```
### Describe Kubernetes Cluster
```
gcloud container clusters describe [CLUSTER NAME] --zone [ZONE]
```
### Get Credentials for Kubernetes Cluster
```
gcloud container clusters get-credentials [CLUSTER NAME] --zone [ZONE]
```
