
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

#CORE 
if ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Present') {
    Write-Verbose -Message "Set-Targetresource: Change policy $DisplayName"
    $NewParameters.Add('ConditionalAccessPolicyId', $currentPolicy.Id)
    try {
        $Uri = (Get-MSCloudLoginConnectionProfile -Workload MicrosoftGraph).ResourceUrl + "beta/identity/conditionalAccess/policies/$($currentPolicy.Id)"
        Invoke-MgGraphRequest -Method PATCH -Uri $Uri -Body $NewParameters
    }
    catch {
        # Error handling logic
    }
}



