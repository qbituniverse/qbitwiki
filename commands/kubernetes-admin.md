# Kubernetes Admin

## Authentication

### Seccret
```
kubectl create secret docker-registry k8s-auth --docker-server [REPO NAME] --docker-username [USER NAME] --docker-password [PASS WORD] --docker-email sample@sample.com
```

### Login
```
az login --service-principal -u [SP NAME] --password [SP PWD] --tenant [TENANT GUID]
```
### Account list
```
az account list
```
### Account set
```
az account set --subscription [SUBS NAME]
```

## Cluster
### Access to cluster
```
az aks get-credentials --resource-group [RESOURCE GROUP NAME] --name [CLUSTER NAME]
```
### Browse cluster
```
az aks browse --resource-group [RESOURCE GROUP NAME] --name [CLUSTER NAME]
```
## Context
### Get all
```
kubectl config get-contexts
```
### Use one
```
kubectl config use-context [CONTEXT NAME]
```
### Delete Context config
```
kubectl config delete-context [CONTEXT NAME]
```
### Delete Cluster config
```
kubectl config delete-cluster [CLUSTER NAME]
```

## Helm
### Tiller setup
```
helm init --upgrade
```
### Tiller admin setup
```
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller --upgrade
```
### Configure ACR repository
```
az configure --defaults acr=[ACR NAME]
```
### Add ACR repository
```
az acr helm repo add
```
### Search ACR repository
```
helm search [ACR NAME]
```
### Add Stable repository
```
helm repo add stable https://kubernetes-charts.storage.googleapis.com
```
### Search Stable repository
```
helm search stable
```
### Release hstory
```
helm history [RELEASE NAME]
```

## DNS
### Check
```
kubectl get services kube-dns --namespace=[NAMESPACE NAME]
```
## Details
### Stats image
```
kubectl run curl --image=[IMAGE NAME]:curl -i --tty
```
### Stats all
```
kubectl run curl -i --tty
```
### Wide output
```
kubectl get pods|svc|etc -o wide
```
