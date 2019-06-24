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
### Cluster Info
```
kubectl cluster-info
```
### Api versions
```
kubectl api-versions
```

## Context
### View kube config
```
kubectl config view
```
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
### Yaml output
```
kubectl get pods|svc|etc -o yaml
```
