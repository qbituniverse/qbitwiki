[CmdletBinding()]
Param
(
	[Parameter(Position=0,Mandatory=$true,HelpMessage="[operation]: --login | --logout")]
	[string]$Operation,

	[Parameter(Position=1,Mandatory=$false,HelpMessage="[service_principal_guid]")]
	[string]$ServicePrincipalGuid = "service_principal_guid",

	[Parameter(Position=2,Mandatory=$false,HelpMessage="[service_principal_key]")]
	[string]$ServicePrincipalKey = "service_principal_key",

	[Parameter(Position=3,Mandatory=$false,HelpMessage="[temant_guid]")]
	[string]$TenantGuid = "temant_guid"
)

If ($Operation -in "--help") {
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Azure Auth:"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	[operation]"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	--login		        Login to Azure as Service Principal."
	Write-Host -ForegroundColor Green "	--logout		Logout from Azure."
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Usage:"
	Write-Host -ForegroundColor Green "To login:"
	Write-Host -ForegroundColor Green "				azure-auth.ps1 --login [service_principal_guid] [service_principal_key] [temant_guid]"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "To logout:"
	Write-Host -ForegroundColor Green "				azure-auth.ps1 --logout [service_principal_guid]"
	Write-Host -ForegroundColor Green ""
	Exit
}

If ($Operation -eq "--login") {
    az login --service-principal -u $ServicePrincipalGuid -p $ServicePrincipalKey -t $TenantGuid
} ElseIf ($Operation -eq "--logout") {
	az logout --username $ServicePrincipalGuid
} Else {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Wrong Operation Received"
	Write-Host -ForegroundColor Red "Use: --login | --logout"
	Write-Host -ForegroundColor Red "=========================================================="
}