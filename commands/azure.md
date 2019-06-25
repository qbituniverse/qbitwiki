# Azure Commands

## Authentication
### Login (principal)
```
az login --service-principal -u [PRINCIPAL GUID] --password [PRINCIPAL KEY] --tenant [TENANT GUID]
```
### Show subscriptions
```
az account list
```
### Current subscription
```
az account show
```
### Set subscription
```
az account set --subscription [SUBSCRIPTION NAME] or [GUID ID]
```

## Kubernetes Cluster
### Access to cluster
```
az aks get-credentials --resource-group [RESOURCE GROUP NAME] --name [CLUSTER NAME]
```
### Browse cluster
```
az aks browse --resource-group [RESOURCE GROUP NAME] --name [CLUSTER NAME]
```
