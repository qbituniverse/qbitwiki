[CmdletBinding()]
Param
(
	[Parameter(Position=0,Mandatory=$false,HelpMessage="Operation: --view | --dangling | --prune | --destroy")]
	[string]$Operation
)

If ($Operation -in "--help") {
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Docker Environment:"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	[operation]"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	--view			View all docker resources: all images, all containers, all volumes, dangling volumes, dangling images."
	Write-Host -ForegroundColor Green "	--dangling		Destroy dangling resources: volumes, images."
	Write-Host -ForegroundColor Green "	--prune			Clean up system of all unused images."
	Write-Host -ForegroundColor Green "	--destroy		Destroy all resources: containers, volumes, images."
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Usage:"
	Write-Host -ForegroundColor Green "				docker-env.ps1 [operation]"
	Write-Host -ForegroundColor Green ""
	Exit
}

If ($Operation -in ("--view", "")) {
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "All Images"
	Write-Host -ForegroundColor Green "=========================================================="
	
	docker images
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "All Containers"
	Write-Host -ForegroundColor Green "=========================================================="
	
	docker ps -a
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "All Volumes"
	Write-Host -ForegroundColor Green "=========================================================="
	
	docker volume ls
	
	Write-Host ""
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Dangling Images"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker images -f dangling=true
	
	Write-Host ""
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Dangling Volumes"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker volume ls -f dangling=true
	
	Write-Host ""
} ElseIf ($Operation -eq "--dangling") {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing Dangling Volumes"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker volume rm -f $(docker volume ls -qf dangling=true)
	
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing Dangling Images"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker rmi -f $(docker images -qf dangling=true)

	Write-Host ""
} ElseIf ($Operation -eq "--prune") {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing Unused Images"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker system prune -af

	Write-Host ""
} ElseIf ($Operation -eq "--destroy") {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing All Containers"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker rm -f -v $(docker ps -aq)

	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing Unused Images"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker system prune -af

	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing Dangling Volumes"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker volume rm -f $(docker volume ls -qf dangling=true)
	
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Removing Dangling Images"
	Write-Host -ForegroundColor Red "=========================================================="
	
	docker rmi -f $(docker images -qf dangling=true)

	Write-Host ""
} Else {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Wrong Operation Received"
	Write-Host -ForegroundColor Red "Use: --view | --dangling | --prune | --destroy"
	Write-Host -ForegroundColor Red "=========================================================="
}