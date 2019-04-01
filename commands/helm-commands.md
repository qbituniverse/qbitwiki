# Helm Commands

## Init
helm init

## Release
### install/upgrade
helm install -f <VALUES FILE>.yaml .
helm upgrade --install --recreate-pods --reset-values --force --wait <RELEASE NAME> <ACR/CHART>
helm upgrade --install --recreate-pods --reset-values --force --values <VALUES FILE>.yaml --wait <RELEASE NAME> .

### delete
helm delete --purge <RELEASE NAME>

### history
helm history <RELEASE NAME>

## Stable Repo Operations
helm repo add stable <STABLE NAME>
helm search stable

## Azure Repo Operations
### set ACR as default for the session
az configure --defaults acr=<ACR NAME>

### list ACRs
az acr list

### refresh helm repos in ACR
az acr helm repo add

### view repos in ACR
helm search <ACR NAME>

### list repos in ACR
az acr helm list

### push helm to ACR
az acr helm push <CHART NAME>

### inspect chart in ACR
az acr helm inspect <ACR NAME/CHART NAME>

### delete repo from ACR
az acr helm delete <CHART NAME> --version <CHART VERSION>