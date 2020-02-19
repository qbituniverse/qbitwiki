# Azure
## Login
```
az login
az login --service-principal -u [ID] --password [KEY] --tenant [TENANTD]
```
## Accounts
```
az account list
az account set --subscription [SUBSCRIPTION]
az account show
```
# Kubectl
## Credentials to access cluster
```
az aks get-credentials --resource-group [RG] --name [CLUSTER]
```
## Contexts
```
kubectl config get-contexts
kubectl config use-context [CONTEXT]
```
## Browse
```
az aks browse --resource-group [RG] --name [CLUSTER]
```
# Helm
## Init
```
helm init
```
### Run this if cluser was created by different principal
```
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller    
helm init --service-account tiller --upgrade
```
## ACR Repo
```
az configure --defaults acr=[ACR NAME]
az acr helm repo add
helm search [ACR NAME]
```
## Stable Repo
```
helm repo add stable [ACR URI]
helm search stable
```
## Release History
```
helm history [RELEASE NAME]
```
## Docker
### Linux switch
```
[Environment]::SetEnvironmentVariable("LCOW_SUPPORTED", "1", "Machine")
Restart-Service *docker*
```
### Windows switch
```
[Environment]::SetEnvironmentVariable("LCOW_SUPPORTED", $null, "Machine")
Restart-Service *docker*
```
