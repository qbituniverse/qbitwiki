# Helm Commands

## System
### Init
```
helm init --upgrade
```
### View charts in local Helm
```
helm search [ACR NAME]
```
### Inspect chart in local Helm
```
helm inspect [ACR NAME]/[CHART NAME] --version [CHART VERSION]
```
### Refresh charts from source
```
helm repo update
```

## Release
### Values in Yaml
```
helm install -f [VALUES FILE].yaml .
```
### Upgrade or Install
```
helm upgrade --install --recreate-pods --reset-values --force --wait [RELEASE NAME] [ACR NAME]/[CHART NAME] --version [CHART VERSION]
```
### Upgrade or Install with values in Yaml
```
helm upgrade --install --recreate-pods --reset-values --force --values [VALUES FILE].yaml --wait [RELEASE NAME] [ACR NAME]/[CHART NAME] --version [CHART VERSION]
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
