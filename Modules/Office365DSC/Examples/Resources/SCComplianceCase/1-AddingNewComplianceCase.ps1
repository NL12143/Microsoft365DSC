<#
This example is used to test new resources and showcase the usage of new resources being worked on.
It is not meant to use as a production baseline.
#>

Configuration Example
{
    param(
        [Parameter(Mandatory = $true)]
        [PSCredential]
        $credsGlobalAdmin
    )
    Import-DscResource -ModuleName Office365DSC

    node localhost
    {
        SCComplianceCase Case
        {
            Name               = "MyCase"
            Description        = "MyPolicy"
            Status             = "Active"
            Ensure             = "Present"
            GlobalAdminAccount = $credsGlobalAdmin
        }
    }
}
