# Nuget
## Connect to private package
### Install nuget.exe
```
choco install nuget.commandline
```
### Run nuget add
```
nuget.exe sources Add -Name "<FEED NAME>" -Source "<FEED URL>" -username <DEVOPS USER> -password <DEVOPS PAT>
```
