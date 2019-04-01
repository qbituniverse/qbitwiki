# prepare Docker
Uninstall-Package -Name docker -ProviderName DockerMSFTProvider -Force
Install-Module DockerProvider -Force
Install-Package Docker -ProviderName DockerProvider -RequiredVersion preview -Force

# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

# install dependencies
choco install googlechrome --ignore-checksum
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