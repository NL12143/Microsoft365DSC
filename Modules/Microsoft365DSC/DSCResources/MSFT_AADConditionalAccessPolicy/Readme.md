# AADConditionalAccessPolicy

## Description

This resource configures an Azure Active Directory Conditional Access Policy.

=================================

## 🔐 Conditional Access Policy (DSC Resource)

```powershell
Configuration ConditionalAccessPolicyConfig {
    Import-DscResource -ModuleName 'Microsoft365DSC'

    Node localhost {
        MSFT_AADConditionalAccessPolicy 'RequireMFAForAdmins' {
            DisplayName                  = 'Require MFA for Admins'
            State                        = 'enabled'
            IncludeRoles                 = @('Global Administrator', 'Intune Administrator')
            IncludeApplications          = @('Azure Portal', 'Microsoft Graph')
            GrantControlOperator         = 'AND'
            BuiltInControls              = @('mfa', 'compliantDevice')
            AuthenticationStrength       = 'Phishing-Resistant MFA'
            DeviceFilterMode             = 'include'
            DeviceFilterRule             = '(device.deviceManagementStates -any (deviceManagementState eq "compliant"))'
            Ensure                       = 'Present'
            ApplicationId                = '<your-app-id>'
            ApplicationSecret            = '<your-app-secret>'
            TenantId                     = '<your-tenant-id>'
        }
    }
}


🔗 Export your current CA policies 🔗 Full schema reference

<details> <summary>📘 Parameters Overview</summary>

Targeting: IncludeUsers, IncludeGroups, IncludeRoles, IncludeApplications, IncludePlatforms, IncludeLocations

Grant Controls: BuiltInControls, AuthenticationStrength, TermsOfUse, CustomAuthenticationFactors

Session Controls: SignInFrequency, PersistentBrowserMode, CloudAppSecurityType

Device Filters: DeviceFilterMode, DeviceFilterRule

Risk Filters: UserRiskLevels, SignInRiskLevels, ServicePrincipalRiskLevels

</details>

====================================

🔍 Key Properties You Can Set via MSFT_AADConditionalAccessPolicy
Here’s a structured overview of the most relevant configurable parameters:

🎯 Targeting
Property	Description
IncludeUsers, ExcludeUsers	UPNs or special values (All, GuestsOrExternalUsers)
IncludeGroups, ExcludeGroups	Group display names
IncludeRoles, ExcludeRoles	Directory role names (e.g. Global Admin)
IncludeApplications, ExcludeApplications	App IDs or display names
IncludePlatforms, ExcludePlatforms	OS platforms (Windows, iOS, Android, etc.)
IncludeLocations, ExcludeLocations	Named locations or IP ranges
DeviceFilterMode, DeviceFilterRule	Filter logic for compliant or hybrid devices

🔐 Grant Controls
Property	Description
GrantControlOperator	AND or OR logic
BuiltInControls	e.g. mfa, compliantDevice, domainJoinedDevice
AuthenticationStrength	e.g. Phishing-Resistant MFA, Passwordless
TermsOfUse	Display name of Terms of Use agreement
CustomAuthenticationFactors	Optional advanced factors

🕒 Session Controls
Property	Description
SignInFrequencyValue, SignInFrequencyType	e.g. 1, Days
PersistentBrowserMode	Always, Never
CloudAppSecurityType	monitorOnly, blockDownloads, etc.
ApplicationEnforcedRestrictionsIsEnabled	Boolean toggle

🧠 Risk & Context
Property	Description
UserRiskLevels, SignInRiskLevels	low, medium, high
ClientAppTypes	browser, mobileAppsAndDesktopClients, etc.
AuthenticationContexts	Auth context class references
ServicePrincipalFilterRule	Custom attribute-based filtering
