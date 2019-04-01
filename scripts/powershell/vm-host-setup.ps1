# open firewall to allow file copy
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

# prepare Docker
Uninstall-Package -Name docker -ProviderName DockerMSFTProvider -Force
Install-Module DockerProvider -Force
Install-Package Docker -ProviderName DockerProvider -RequiredVersion preview -Force

# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

# install dependencies
choco install azure-cli

# reboot
Restart-Computer