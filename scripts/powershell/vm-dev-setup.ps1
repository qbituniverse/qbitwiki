# clean up Docker
Uninstall-Package -Name docker -ProviderName DockerMsftProvider
Uninstall-Module -Name DockerMsftProvider
Get-HNSNetwork | Remove-HNSNetwork
Remove-Item -Path "C:\ProgramData\Docker" -Recurse -Force

# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

# install dependencies
choco install docker-for-windows
choco install docker-compose
choco install googlechrome --ignore-checksum
choco install postman
choco install sourcetree
choco install git.install
choco install git-lfs.install
choco install vscode
choco install azure-cli
az extension add --name mesh
choco install kubernetes-cli
choco install kubernetes-helm

# reboot
Restart-Computer
