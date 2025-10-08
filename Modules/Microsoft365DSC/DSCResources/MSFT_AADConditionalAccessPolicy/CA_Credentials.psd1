@{
    ApplicationId     = 'your-app-id'
    ApplicationSecret = 'your-app-secret'
    TenantId          = 'your-tenant-id'
}

<#
Use in script as 
$CredsPath = Join-Path $PSScriptRoot 'credentials.psd1'
$Creds = Import-PowerShellDataFile -Path $CredsPath

$AppId     = $Creds.ApplicationId
$AppSecret = $Creds.ApplicationSecret
$TenantId  = $Creds.TenantId
#>
