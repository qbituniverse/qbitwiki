# Kubectl Commands
## Pod
### Create
```
kubectl create -f [FILE NAME].yaml
```
### Get all
```
kubectl get pods
```
### Info
```
kubectl describe pods
```
### Delete
```
kubectl delete pods [POD NAME]
```
## Replication Controller
### Create
```
kubectl create -f [FILE NAME].yaml
```
### Update
```
kubectl apply -f [FILE NAME].yaml
```
### Get
```
kubectl get rc
```
### Info
```
kubectl describe rc [RC NAME]
```
### Delete
```
kubectl delete rc [RC NAME]
```
## Service
### Expose port
```
kubectl expose rc [RC NAME] --name=[SVC NAME] --target-port=[PORT NUMBER] --type=NodePort
```
### Create
```
kubectl create -f [FILENAME].yaml
```
### Get
```
kubectl get svc
```
### Info
```
kubectl describe svc [SVC NAME]
```
### Delete
```
kubectl delete svc [SVC NAME]
```
### Watch
```
kubectl get service [SVC NAME] --watch
```
## Deployments
### Create
```
kubectl create -f [FILE NAME].yaml
```
### Update
```
kubectl apply -f [FILE NAME].yaml --record
```
### Status
```
kubectl rollout status deployment [DEPLOYMENT NAME]
```
### History
```
kubectl rollout history deployment [DEPLOYMENT NAME]
```
### Rollback
```
kubectl rollout undo deployment [DEPLOYMENT NAME] --to-revision=1
```
### Get
```
kubectl get deploy
```
### Info
```
kubectl describe deploy [DEPLOYMENT NAME]
```
### Delete
```
kubectl delete deploy [DEPLOYMENT NAME]
```
## Replica Sets
### Get
```
kubectl get rs
```
### Info
```
kubectl describe rs
```
# Common Kubectl Operations
## Context
### Get all
```
kubectl config get-contexts
```
### Use one
```
kubectl config use-context [CONTEXT NAME]
```
## Authentication
### With secret
```
kubectl create secret docker-registry k8s-auth --docker-server [REPO NAME] --docker-username [USER NAME] --docker-password [PASS WORD] --docker-email sample@sample.com
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
## Cluster
### Access to cluster
```
az aks get-credentials --resource-group [RESOURCE GROUP NAME] --name [CLUSTER NAME]
```
### Browse cluster
```
az aks browse --resource-group [RESOURCE GROUP NAME] --name [CLUSTER NAME]
```