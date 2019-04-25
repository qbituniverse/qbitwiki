# prepare Docker
Uninstall-Package -Name docker -ProviderName DockerMSFTProvider -Force
Install-Module DockerProvider -Force
Install-Package Docker -ProviderName DockerProvider -RequiredVersion preview -Force

# add Docker Compose
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-Windows-x86_64.exe" -UseBasicParsing -OutFile $Env:ProgramFiles\Docker\docker-compose.exe

# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

# install dependencies
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