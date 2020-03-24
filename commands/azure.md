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
### Cluster version upgrades
```
az aks get-versions --output table --location [LOCATION]
```

## Container Registry
### List ACRs
```
az acr list
```
### Set default ACR
```
az configure --defaults acr=[ACR NAME]
```
### List Specific ACR
```
az acr helm list -n [ACR NAME]
```
### Chart Details from ACR
```
az acr helm show [CHART NAME] -n [ACR NAME]
```
### Inspect chart in ACR
```
az acr helm inspect [ACR NAME/CHART NAME]
```
### Add ACR repo to local Helm
```
az acr helm repo add -n [ACR NAME]
```
### Refresh
```
az acr helm repo add
```
### Push chart to ACR
```
az acr helm push [CHART NAME]
```
### Ddelete chart from ACR
```
az acr helm delete [CHART NAME] --version [CHART VERSION]
```
