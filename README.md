# Microsoft365DSC

This module allows organizations to automate the deployment,
configuration, reporting and monitoring of Microsoft 365 Tenants via PowerShell
Desired State Configuration. The compiled configuration needs to be
executed from an agent's Local Configuration Manager (LCM) (machine
or container) which can communicate back remotely to Microsoft 365 via
remote API calls (therefore requires internet connectivity)

## Qucik Install

To acquire the latest bits of the module from a machine that has internet connectivity, run the following PowerShell v5, as an admin:

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

## Branches

### master

[![codecov](https://codecov.io/gh/Microsoft/Microsoft365DSC/branch/master/graph/badge.svg)](https://codecov.io/gh/Microsoft/Microsoft365DSC)

This is the dev branch containing the latest release. No contributions should be made directly to this branch.

Contributors are encouraged to propose their contributions as pull requests to this development branch.
This branch will periodically be merged to the master branch,
and be released to [PowerShell Gallery](https://www.powershellgallery.com/).

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
