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
