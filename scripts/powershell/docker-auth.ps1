[CmdletBinding()]
Param
(
	[Parameter(Position=0,Mandatory=$true,HelpMessage="[operation]: --login | --logout")]
	[string]$Operation,

	[Parameter(Position=1,Mandatory=$false,HelpMessage="[registry_url]")]
	[string]$RegistryUrl = "registry_url"
)

If ($Operation -in "--help") {
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Docker Registry Auth:"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	[operation]"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	--login		Login as Service Principal to Registry."
	Write-Host -ForegroundColor Green "	--logout		Logout from Registry."
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Usage:"
	Write-Host -ForegroundColor Green "				docker-auth.ps1 [operation] [registry_url]"
	Write-Host -ForegroundColor Green ""
	Exit
}

If ($Operation -eq "--login") {
    docker login $RegistryUrl
} ElseIf ($Operation -eq "--logout") {
	docker logout $RegistryUrl
} Else {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Wrong Operation Received"
	Write-Host -ForegroundColor Red "Use: --login | --logout"
	Write-Host -ForegroundColor Red "=========================================================="
}