# Kubectl Commands

## Pod
kubectl create -f <FILE NAME>.yaml
kubectl get pods
kubectl describe pods
kubectl delete pods <POD NAME>

## Replication Controller
### create
kubectl create -f <FILE NAME>.yaml

### update
kubectl apply -f <FILE NAME>.yaml
kubectl get rc
kubectl describe rc <RC NAME>
kubectl delete rc <RC NAME>

## Service
### manual
kubectl expose rc <RC NAME> --name=<SVC NAME> --target-port=<PORT> --type=NodePort

### declarative
kubectl create -f <RC NAME>.yaml
kubectl get svc
kubectl describe svc <SVC NAME>
kubectl delete svc <SVC NAME>
kubectl get ep

### watch
kubectl get service <SVC NAME> --watch

## Deployments
### create
kubectl create -f <RC NAME>.yaml

### update
kubectl apply -f <RC NAME>.yaml --record
kubectl rollout status deployment <DEPLOYMENT NAME>
kubectl rollout history deployment <DEPLOYMENT NAME>

### rollback
kubectl rollout undo deployment <DEPLOYMENT NAME> --to-revision=1

kubectl get deploy
kubectl describe deploy <DEPLOYMENT NAME>
kubectl delete deploy <DEPLOYMENT NAME>

## Replica Sets
kubectl get rs
kubectl describe rs

## Processes
### k8s context
kubectl config get-contexts
kubectl config use-context <CONTEXT NAME>

### authenticate with secret
kubectl create secret docker-registry acr-k8s-auth --docker-server <ACR NAME> --docker-username <UN> --docker-password <PW> --docker-email sample@sample.com

### check if DNS is enabled
kubectl get services kube-dns --namespace=<NAMESPACE NAME>

## bash into the kube
kubectl run curl --image=<IMAGE NAME>:curl -i --tty
kubectl run curl -i --tty

kubectl get pods -o wide
kubectl get svc -o wide
kubectl get deployments -o wide

## Lifecycle
### deployment
- creates Deployment
- creates Replica Set
- creates Pods
- creates Service
kubectl apply -f <FILE NAME>.yaml

### update
kubectl apply -f <FILE NAME>.yaml --record
kubectl rollout status deployment <DEPLOYMENT NAME>
kubectl rollout history deployment <DEPLOYMENT NAME>

### roll back
kubectl rollout undo deployment <DEPLOYMENT NAME> --to-revision=1

### un-deployment
- deletes Service
kubectl delete svc <SVC NAME>

- deletes Pods
- deletes Replica Set
- deletes Deployment
kubectl delete deploy <DEPLOYMENT NAME>

## Azure Operations
### get access to cluster
az aks get-credentials --resource-group <RESOURCE GROUP NAME> --name <CLUSTER NAME>

### browse cluster GUI
az aks browse --resource-group <RESOURCE GROUP NAME> --name <CLUSTER NAME>