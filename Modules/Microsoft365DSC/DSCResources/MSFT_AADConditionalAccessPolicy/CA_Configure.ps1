Configuration ConditionalAccessPolicyConfig {
    Import-DscResource -ModuleName 'Microsoft365DSC'

    Node localhost {
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
            ApplicationId          = '<your-app-id>'
            ApplicationSecret      = '<your-app-secret>'
            TenantId               = '<your-tenant-id>'
        }
    }
}
