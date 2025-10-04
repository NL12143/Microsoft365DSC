# Microsoft365DSC

This module allows organizations to automate the deployment,
configuration, reporting and monitoring of Microsoft 365 Tenants via PowerShell
Desired State Configuration. The compiled configuration needs to be
executed from an agent's Local Configuration Manager (LCM) (machine
or container) which can communicate back remotely to Microsoft 365 via
remote API calls (therefore requires internet connectivity)

See latest
<a href="https://www.linkedin.com/feed/update/urn:li:share:7379632619665313792" target="_blank">
  <img src="https://img.shields.io/badge/LinkedIn-Post-blue" alt="LinkedIn Preview">
</a>

## Quick Install PS v5 
Note: best install and run using Powershell v5. For v7 [read this first](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/powershell7-support.md) 

To acquire the latest bits of the module from a machine that has internet connectivity, run the following PowerShell v5, as an ADMIN:

```PowerShell
Install-Module -Name Microsoft365DSC -Scope AllUsers -Force
Update-M365DSCModule # Install dependencies like az, graph, intune, 
```

For information on how to get started, additional documentation or
additional resources, please navigate to the official web site at
[Microsoft365DSC.com](http://Microsoft365DSC.com) 

## 📘 Full Documentation Index

### 🏠 Home  
- [What is Microsoft365DSC?](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/home/what-is-M365DSC.md)  
- [Blog Posts](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/blog/index.md)

<details>
  <summary>🚀 Get Started</summary>

- [Introduction](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/introduction.md)  
- [Prerequisites](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/prerequisites.md)  
- [Authentication and Permissions](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/authentication-and-permissions.md)  
- [Authentication Examples](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/authentication-examples.md)  
- [How to Install](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/how-to-install.md)  
- [Taking a Snapshot of Existing Tenant](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/snapshot-of-existing-tenant.md)  
- [Deploying Configurations](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/deploying-configurations.md)  
- [Securing your Compiled Configuration](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/securing-configurations.md)  
- [Monitoring for Configuration Drifts](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/monitoring-drifts.md)  
- [Cloning Tenant Configurations](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/cloning-tenants.md)  
- [Generating Reports from Configurations](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/generating-reports.md)  
- [Comparing Configurations](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/comparing-configurations.md)  
- [Integrating with Azure DevOps](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/integrating-with-azure-devops.md)  
- [Support](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/support.md)  
- [Telemetry](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/telemetry.md)  
- [PowerShell 7+ Support](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/powershell7-support.md)  
- [Troubleshooting](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/get-started/troubleshooting.md)

</details>

<details>
  <summary>🧠 Advanced</summary>

- [Blueprints](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/advanced/create-blueprint.md)  
- [Dynamic Resource Generator (DRG)](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/advanced/dynamic-resource-generator.md)

</details>

<details>
  <summary>⚙️ Cmdlets</summary>

- [Export-M365DSCConfiguration](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/cmdlets/Export-M365DSCConfiguration.md)  
- [Compare-M365DSCConfigurations](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/cmdlets/Compare-M365DSCConfigurations.md)  
- [Get-M365DSCAllResources](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/cmdlets/Get-M365DSCAllResources.md)  
- [Update-M365DSCDependencies](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/user-guide/cmdlets/Update-M365DSCDependencies.md)

</details>

<details>
  <summary>👥 Contributing</summary>

- [Contribution Guidelines](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/contributing/contribution-guidelines.md)  
- [Getting Started](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/contributing/getting-started.md)  
- [Develop a New Resource](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/contributing/develop-new-resource.md)

</details>

<details>
  <summary>📚 Concepts</summary>

- [Breaking Changes Policy](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/concepts/breaking-changes.md)  
- [Key Parameters in DSC](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/concepts/key-parameters.md)  
- [Personas](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/concepts/personas.md)

</details>

<details>
  <summary>📦 Resources</summary>

- [Overview](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/overview.md)  
- [Azure](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/azure)  
- [Azure AD](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/azure-ad)  
- [Exchange](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/exchange)  
- [Intune](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/intune)  
- [SharePoint](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/sharepoint)  
- [Teams](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/resources/teams)

</details>

<details>
  <summary>📄 About</summary>

- [Why Microsoft365DSC](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/about/why.md)  
- [License](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/about/license.md)  
- [Community Resources](https://github.com/NL12143/Microsoft365DSC/blob/Dev/docs/docs/about/community-resources.md)  
- [Changelog](https://github.com/microsoft/Microsoft365DSC/blob/master/CHANGELOG.md)

</details>






and check out the official YouTube channel
[Microsoft365DSC](https://www.youtube.com/channel/UCveScabVT6pxzqYgGRu17iw).


## Telemetry Disclaimer

Microsoft365DSC captures Telemetry data about the names of the resources
in which a configuration drift has been detected, along with the type
of exceptions being thrown by errors in the various modules. While no
sensitive data is ever captured, App Insights, which performs
telemetry analytics, captures information about the city
where the telemetry entries were captured by default. Users can
opt-out to prevent telemetry from being sent back to the Microsoft365DSC team
by running the following command:

```PowerShell
Set-M365DSCTelemetryOption -Enabled $False
```
