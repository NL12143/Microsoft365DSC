# Microsoft365DSC

This module allows organizations to automate the deployment,
configuration, reporting and monitoring of Microsoft 365 Tenants via PowerShell
Desired State Configuration. The compiled configuration needs to be
executed from an agent's Local Configuration Manager (LCM) (machine
or container) which can communicate back remotely to Microsoft 365 via
remote API calls (therefore requires internet connectivity)

## Quick Install

To acquire the latest bits of the module from a machine that has internet connectivity, run the following PowerShell v5, as an ADMIN:

```PowerShell
Install-Module -Name Microsoft365DSC -Scope AllUsers -Force
Update-M365DSCModule # Install dependencies like az, graph, intune, 
```

For information on how to get started, additional documentation or
additional resources, please navigate to the official web site at
[Microsoft365DSC.com](http://Microsoft365DSC.com) and check out the
official YouTube channel
[Microsoft365DSC](https://www.youtube.com/channel/UCveScabVT6pxzqYgGRu17iw).

[View LinkedIn Post](https://www.linkedin.com/feed/update/urn:li:share:7379632619665313792)

[![LinkedIn Preview](https://img.shields.io/badge/LinkedIn-Post-blue)](https://www.linkedin.com/feed/update/urn:li:share:7379632619665313792)

This is the dev branch containing the latest release. No contributions should be made directly to this branch.

## Documentation 

## 📘 MS365DSC Documentation Index https://microsoft365dsc.com/ 

### 🏠 Home  
- [What is Microsoft365DSC?](docs/home/what-is-M365DSC.md)  
- [Blog Posts](docs/blog/index.md)

### 🚀 Get Started  
- [Introduction](docs/user-guide/get-started/introduction.md)  
- [Prerequisites](docs/user-guide/get-started/prerequisites.md)  
- [Authentication and Permissions](docs/user-guide/get-started/authentication-and-permissions.md)  
- [Authentication Examples](docs/user-guide/get-started/authentication-examples.md)  
- [How to Install](docs/user-guide/get-started/how-to-install.md)  
- [Taking a Snapshot of Existing Tenant](docs/user-guide/get-started/snapshot-of-existing-tenant.md)  
- [Deploying Configurations](docs/user-guide/get-started/deploying-configurations.md)  
- [Securing your Compiled Configuration](docs/user-guide/get-started/securing-configurations.md)  
- [Monitoring for Configuration Drifts](docs/user-guide/get-started/monitoring-drifts.md)  
- [Cloning Tenant Configurations](docs/user-guide/get-started/cloning-tenants.md)  
- [Generating Reports from Configurations](docs/user-guide/get-started/generating-reports.md)  
- [Comparing Configurations](docs/user-guide/get-started/comparing-configurations.md)  
- [Integrating with Azure DevOps](docs/user-guide/get-started/integrating-with-azure-devops.md)  
- [Support](docs/user-guide/get-started/support.md)  
- [Telemetry](docs/user-guide/get-started/telemetry.md)  
- [PowerShell 7+ Support](docs/user-guide/get-started/powershell7-support.md)  
- [Troubleshooting](docs/user-guide/get-started/troubleshooting.md)

### 🧠 Advanced  
- [Blueprints](docs/user-guide/advanced/create-blueprint.md)  
- [Dynamic Resource Generator (DRG)](docs/user-guide/advanced/dynamic-resource-generator.md)

### ⚙️ Cmdlets  
- [Export-M365DSCConfiguration](docs/user-guide/cmdlets/Export-M365DSCConfiguration.md)  
- [Compare-M365DSCConfigurations](docs/user-guide/cmdlets/Compare-M365DSCConfigurations.md)  
- [Get-M365DSCAllResources](docs/user-guide/cmdlets/Get-M365DSCAllResources.md)  
- [Update-M365DSCDependencies](docs/user-guide/cmdlets/Update-M365DSCDependencies.md)

### 👥 Contributing  
- [Contribution Guidelines](docs/contributing/contribution-guidelines.md)  
- [Getting Started](docs/contributing/getting-started.md)  
- [Develop a New Resource](docs/contributing/develop-new-resource.md)

### 📚 Concepts  
- [Breaking Changes Policy](docs/concepts/breaking-changes.md)  
- [Key Parameters in DSC](docs/concepts/key-parameters.md)  
- [Personas](docs/concepts/personas.md)

### 📦 Resources  
- [Overview](docs/resources/overview.md)  
- [Azure](docs/resources/azure)  
- [Azure AD](docs/resources/azure-ad)  
- [Exchange](docs/resources/exchange)  
- [Intune](docs/resources/intune)  
- [SharePoint](docs/resources/sharepoint)  
- [Teams](docs/resources/teams)

### 📄 About  
- [Why Microsoft365DSC](docs/about/why.md)  
- [License](docs/about/license.md)  
- [Community Resources](docs/about/community-resources.md)  
- [Changelog](https://github.com/microsoft/Microsoft365DSC/blob/master/CHANGELOG.md)



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
