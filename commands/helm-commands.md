# Helm Commands
## System
### Init
```
helm init
```
## Release
### Values in Yaml
```
helm install -f [VALUES FILE].yaml .
```
### Upgrade or Install
```
helm upgrade --install --recreate-pods --reset-values --force --wait [RELEASE NAME] [REPO OR CHART]
```
### Upgrade or Install with values in Yaml
```
helm upgrade --install --recreate-pods --reset-values --force --values [VALUES FILE].yaml --wait [RELEASE NAME] .
```
### Delete
```
helm delete --purge [RELEASE NAME]
```
### History
```
helm history [RELEASE NAME]
```
## Stable Repositories
### Add
```
helm repo add stable [STABLE NAME]
```
### Search
```
helm search stable
```
## Azure Repositories
### Set default ACR
```
az configure --defaults acr=[ACR NAME]
```
### List ACRs
```
az acr list
```
### Refresh
```
az acr helm repo add
```
### Search
```
helm search [ACR NAME]
```
### List charts in ACR
```
az acr helm list
```
### Push chart to ACR
```
az acr helm push [CHART NAME]
```
### Inspect chart in ACR
```
az acr helm inspect [ACR NAME/CHART NAME]
```
### Ddelete chart from ACR
```
az acr helm delete [CHART NAME] --version [CHART VERSION]
```