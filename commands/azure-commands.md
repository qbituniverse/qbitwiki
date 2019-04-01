# Azure Commands

## Authentication
### login
az login --service-principal -u [PRINCIPAL GUID] --password [PRINCIPAL KEY] --tenant [TENANT GUID]

### show subscriptions
az account list

### current subscription
az account show

### set subscription
az account set --subscription [SUBSCRIPTION NAME] or [GUID]