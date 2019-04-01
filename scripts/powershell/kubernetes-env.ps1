[CmdletBinding()]
Param
(
	[Parameter(Position=0,Mandatory=$false,HelpMessage="Operation: --view | --view-wide")]
	[string]$Operation
)

If ($Operation -in "--help") {
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Kubectl Environment:"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	[operation]"
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "	--view			View all k8s resources: all contexts, all namespaces, all deployments, all replica sets, all services, all pods."
	Write-Host -ForegroundColor Green "	--view-wide		View all k8s resources in wide view: all contexts, all namespaces, all deployments, all replica sets, all services, all pods."
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green ""
	Write-Host -ForegroundColor Green "Usage:"
	Write-Host -ForegroundColor Green "				kubectl-env.ps1 [operation]"
	Write-Host -ForegroundColor Green ""
	Exit
}

If ($Operation -in ("--view", "--view-wide", "")) {
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Current Azure Subscription"
	Write-Host -ForegroundColor Green "=========================================================="
	
	az account show --query "name" --output tsv
	
	Write-Host ""
    Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Current Context"
	Write-Host -ForegroundColor Green "=========================================================="
	
	kubectl config get-contexts
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Ingress"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get ingress
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get ingress -o wide
	}

	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Certificates"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get certificates
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get certificates -o wide
	}

	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Cluster Issuers"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get clusterissuers
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get clusterissuers -o wide
	}

	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Namespaces"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get namespaces
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get namespaces -o wide
	}
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Releases"
	Write-Host -ForegroundColor Green "=========================================================="
	
	helm list

	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Deployments"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get deployments --all-namespaces
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get deployments --all-namespaces -o wide
	}
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Replica Sets"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get rs --all-namespaces
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get rs --all-namespaces -o wide
	}

	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Replication Controllers"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get rc --all-namespaces
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get rc --all-namespaces -o wide
	}
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Services"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get svc --all-namespaces
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get svc --all-namespaces -o wide
	}
	
	Write-Host ""
	Write-Host -ForegroundColor Green "=========================================================="
	Write-Host -ForegroundColor Green "Pods"
	Write-Host -ForegroundColor Green "=========================================================="
	
	If ($Operation -in ("--view", "")) {
		kubectl get pods --all-namespaces
	} ElseIf ($Operation -eq "--view-wide") {
		kubectl get pods --all-namespaces -o wide
	}
	
	Write-Host ""
} Else {
	Write-Host -ForegroundColor Red "=========================================================="
	Write-Host -ForegroundColor Red "Wrong Operation Received"
	Write-Host -ForegroundColor Red "Use: --view | --view-wide"
	Write-Host -ForegroundColor Red "=========================================================="
}