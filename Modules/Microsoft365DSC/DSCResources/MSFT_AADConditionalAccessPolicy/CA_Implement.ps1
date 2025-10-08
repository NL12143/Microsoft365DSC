
#CREATE 
Configure-CA.ps1

# COMPILE to MOF
.\Configure-CA.ps1

# APPLY CALL like FUNCTION
Start-DscConfiguration -Path .\ConditionalAccessPolicyConfig -Wait -Verbose -Force

#INPUT 
Connect-AzAccount
(Get-AzTenant).Id

Connect-MgGraph
(Get-MgOrganization).Id

Connect-AzureAD
(Get-AzureADTenantDetail).ObjectId



