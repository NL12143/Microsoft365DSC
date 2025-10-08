
#CREATE 
Configure-CA.ps1

# COMPILE to MOF
.\Configure-CA.ps1

# APPLY
Start-DscConfiguration -Path .\ConditionalAccessPolicyConfig -Wait -Verbose -Force
