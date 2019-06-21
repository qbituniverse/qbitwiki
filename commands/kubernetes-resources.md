# Kubernetes Resources

## Namespace
### Show all Namespaces
```
kubectl get namespaces
```
### Get all resources per namespace
```
kubectl get all -n [NAMESPACE]
```
### Delete all resources
```
kubectl delete namespace -n [NAMESPACE] --all
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
### Logs
```
kubectl logs -f deploy/[DEPLOYMENT NAME] -n [NAMESPACE]
```
### Delete
```
kubectl delete deploy [DEPLOYMENT NAME]
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
### Logs
```
kubectl logs [POD NAME] -n [NAMESPACE]
```
### Exec
```
kubectl exec -it [POD NAME] -n [NAMESPACE] /bin/bash
```
### Delete
```
kubectl delete pods [POD NAME]
```

## Ingress
### Get
```
kubectl get ingress -n all-namespaces
```
### Info
```
kubectl describe ingress [INGRESS NAME] -n [NAMESPACE NAME]
```
### Delete
```
kubectl delete ingress [INGRESS NAME] -n [NAMESPACE NAME]
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

## Replica Sets
### Get
```
kubectl get rs
```
### Info
```
kubectl describe rs
```
