
# GLOBAL VAR
$env:ApplicationId     = '<your-app-id>'
$env:ApplicationSecret = '<your-app-secret>'
$env:TenantId          = '<your-tenant-id>'

# PROJECT VAR
$CredsPath = Join-Path $PSScriptRoot 'credentials.json'
$Creds = Get-Content $CredsPath | ConvertFrom-Json
$AppId     = $Creds.ApplicationId
$AppSecret = $Creds.ApplicationSecret
$TenantId  = $Creds.TenantId

# LOCAL VAR
$AppId     = '<your-app-id>'
$TenantId  = '<your-tenant-id>'
$AppSecret = Read-Host -Prompt 'Enter App Secret' -AsSecureString

Configuration ConditionalAccessPolicyConfig {
    Import-DscResource -ModuleName 'Microsoft365DSC'

    Node localhost {

        # Enforce strong MFA and compliant device for admins
        MSFT_AADConditionalAccessPolicy 'RequireStrongMFAAndCompliantDevice' {
            DisplayName            = 'Require Strong MFA and Compliant Device for Admins'
            State                  = 'enabled'

            IncludeRoles           = @('Global Administrator', 'Intune Administrator')
            IncludeApplications    = @('Azure Portal', 'Microsoft Graph')

            GrantControlOperator   = 'AND'
            BuiltInControls        = @('mfa', 'compliantDevice')
            AuthenticationStrength = 'Phishing-Resistant MFA'

            DeviceFilterMode       = 'include'
            DeviceFilterRule       = '(device.deviceManagementStates -any (deviceManagementState eq "compliant"))'

            Ensure                 = 'Present'

            ApplicationId          = $AppId
            ApplicationSecret      = $AppSecret
            TenantId               = $TenantId
        }

    }
}

