# Generated with Microsoft365DSC version 1.24.424.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter(Mandatory)]
    [System.String]
    $ConditionalExclude,
    [parameter(Mandatory)]
    [System.String]
    $EnforcedMFA,
    [parameter(Mandatory)]
    [System.String]
    $TermsOfUse
)

Configuration M365TenantConfig
{
    param (
        [parameter()]
        [System.String]
        $ConditionalExclude,
        [parameter()]
        [System.String]
        $EnforcedMFA,
        [parameter()]
        [System.String]
        $TermsOfUse
    )

    $OrganizationName = $ConfigurationData.NonNodeData.OrganizationName

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.24.424.1'

    Node localhost
    {
        AADAuthenticationContextClassReference "AADAuthenticationContextClassReference-c1"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            DisplayName           = "Official Sensitive Locations - Managed Device Only";
            Ensure                = "Present";
            Id                    = "c1";
            IsAvailable           = $True;
            TenantId              = $OrganizationName;
        }
        AADAuthenticationContextClassReference "AADAuthenticationContextClassReference-c2"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            DisplayName           = "Protected Location Access";
            Ensure                = "Present";
            Id                    = "c2";
            IsAvailable           = $True;
            TenantId              = $OrganizationName;
        }
        AADAuthenticationContextClassReference "AADAuthenticationContextClassReference-c3"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            DisplayName           = "Official Sensitive Location Access";
            Ensure                = "Present";
            Id                    = "c3";
            IsAvailable           = $True;
            TenantId              = $OrganizationName;
        }
        AADAuthorizationPolicy "AADAuthorizationPolicy"
        {
            AllowedToSignUpEmailBasedSubscriptions                  = $True;
            AllowedToUseSSPR                                        = $True;
            AllowEmailVerifiedUsersToJoinOrganization               = $True;
            AllowInvitesFrom                                        = "none";
            ApplicationId                                           = $ConfigurationData.NonNodeData.ApplicationId;
            BlockMsolPowerShell                                     = $False;
            CertificateThumbprint                                   = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DefaultUserRoleAllowedToCreateApps                      = $False;
            DefaultUserRoleAllowedToCreateSecurityGroups            = $False;
            DefaultUserRoleAllowedToCreateTenants                   = $False;
            DefaultUserRoleAllowedToReadBitlockerKeysForOwnedDevice = $True;
            DefaultUserRoleAllowedToReadOtherUsers                  = $True;
            Description                                             = "Used to manage authorization related settings across the company.";
            DisplayName                                             = "Authorization Policy";
            Ensure                                                  = "Present";
            GuestUserRole                                           = "RestrictedGuest";
            IsSingleInstance                                        = "Yes";
            PermissionGrantPolicyIdsAssignedToDefaultUserRole       = @("ManagePermissionGrantsForOwnedResource.microsoft-dynamically-managed-permissions-for-chat","ManagePermissionGrantsForOwnedResource.microsoft-dynamically-managed-permissions-for-team");
            TenantId                                                = $OrganizationName;
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-BLOCK - Countries Not Allowed"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("block");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "BLOCK - Countries Not Allowed";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @("Allowed Countries");
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "1e07844e-825d-4e30-824a-3cb0f34cdd2a";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @("All");
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-BLOCK - Guest Access"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("block");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("exchangeActiveSync","browser","mobileAppsAndDesktopClients","other");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "BLOCK - Guest Access";
            Ensure                               = "Present";
            ExcludeApplications                  = @("Office365");
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @();
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "efd4b3c6-e78d-49ad-ac6a-ca0436576317";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "all";
            IncludeGroups                        = @();
            IncludeGuestOrExternalUserTypes      = @("internalGuest","b2bCollaborationGuest","b2bCollaborationMember","b2bDirectConnectUser","otherExternalUser","serviceProvider");
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @();
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-BLOCK - High Risk Sign-Ins"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("block");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("exchangeActiveSync","browser","mobileAppsAndDesktopClients","other");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "BLOCK - High Risk Sign-Ins";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "4f73b5d4-020e-4631-af22-d6ddd914d1bc";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @("high");
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-BLOCK - Legacy Authentication"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("block");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("exchangeActiveSync","other");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "BLOCK - Legacy Authentication";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "03cd82f7-61dc-4b79-ba6f-825733e38286";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-BLOCK - Unapproved Devices"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("block");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "BLOCK - Unapproved Devices";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "15dc3475-c418-47b4-a9f9-ea2a94fe8f02";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @("android","iOS","windowsPhone","macOS","linux");
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Guest Access"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Guest Access";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @();
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "d015040f-99fd-4e7c-abc1-35f5e5a9c728";
            IncludeApplications                  = @("Office365");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "all";
            IncludeGroups                        = @();
            IncludeGuestOrExternalUserTypes      = @("internalGuest","b2bCollaborationGuest","b2bCollaborationMember","b2bDirectConnectUser","otherExternalUser","serviceProvider");
            IncludeLocations                     = @();
            IncludePlatforms                     = @("windows");
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @();
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "disabled";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Intune Enrolment"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Intune Enrolment";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "504c3395-a171-41a9-ad23-0038beecd904";
            IncludeApplications                  = @("0000000a-0000-0000-c000-000000000000");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @("iOS","windows");
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - iOS Device Access"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("compliantDevice");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - iOS Device Access";
            Ensure                               = "Present";
            ExcludeApplications                  = @("0000000a-0000-0000-c000-000000000000");
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "705e2720-23af-4a24-bfe6-c17a735342c8";
            IncludeApplications                  = @("Office365");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @("iOS");
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Terms of use"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @();
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Terms of use";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "485b13ff-9f66-4954-b74e-da7b8f2e243e";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            TermsOfUse                           = $TermsOfUse;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Windows Device Access"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa","compliantDevice");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Windows Device Access";
            Ensure                               = "Present";
            ExcludeApplications                  = @("0000000a-0000-0000-c000-000000000000");
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "AND";
            Id                                   = "5b7b7e56-3ae4-464f-80d2-da7e911e80ad";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @("windows");
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-SESSION - Admin Sign-in Frequency"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("browser","mobileAppsAndDesktopClients","other");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "SESSION - Admin Sign-in Frequency";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "f14f88d7-2665-4ce6-b89b-125b11588383";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @("Application Administrator","Application Developer","Attack Payload Author","Attack Simulation Administrator","Attribute Definition Administrator","Attribute Assignment Reader","Attribute Assignment Administrator","Reports Reader","Organizational Messages Writer","SharePoint Administrator","Yammer Administrator","Windows Update Deployment Administrator","Windows 365 Administrator","Viva Goals Administrator","Virtual Visits Administrator","User Experience Success Manager","User Administrator","Usage Summary Reports Reader","Tenant Creator","Teams Devices Administrator","Teams Communications Support Specialist","Teams Communications Support Engineer","Teams Communications Administrator","Teams Administrator","Skype for Business Administrator","Service Support Administrator","Security Reader","Security Administrator","Security Operator","Search Editor","Search Administrator","Privileged Role Administrator","Privileged Authentication Administrator","Printer Technician","Printer Administrator","Power Platform Administrator","Fabric Administrator","Permissions Management Administrator","Password Administrator","Office Apps Administrator","Network Administrator","Microsoft Hardware Warranty Specialist","Microsoft Hardware Warranty Administrator","Message Center Reader","Message Center Privacy Reader","Lifecycle Workflows Administrator","License Administrator","Knowledge Manager","Knowledge Administrator","Kaizala Administrator","Intune Administrator","Insights Business Leader","Insights Analyst","Insights Administrator","Identity Governance Administrator","Hybrid Identity Administrator","Helpdesk Administrator","Guest Inviter","Groups Administrator","Global Reader","Global Administrator","External Identity Provider Administrator","External ID User Flow Attribute Administrator","External ID User Flow Administrator","Exchange Recipient Administrator","Exchange Administrator","Edge Administrator","Dynamics 365 Administrator","Domain Name Administrator","Directory Writers","Directory Synchronization Accounts","Directory Readers","Desktop Analytics Administrator","Customer LockBox Access Approver","Conditional Access Administrator","Compliance Data Administrator","Compliance Administrator","Cloud Device Administrator","Cloud Application Administrator","Cloud App Security Administrator","Billing Administrator","B2C IEF Policy Administrator","Azure Information Protection Administrator","B2C IEF Keyset Administrator","Azure DevOps Administrator","Azure AD Joined Device Local Administrator","Authentication Policy Administrator","Authentication Administrator","Authentication Extensibility Administrator","Attribute Definition Reader");
            IncludeUserActions                   = @();
            IncludeUsers                         = @();
            PersistentBrowserMode                = "";
            SignInFrequencyInterval              = "timeBased";
            SignInFrequencyIsEnabled             = $True;
            SignInFrequencyType                  = "hours";
            SignInFrequencyValue                 = 4;
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-SESSION - User Sign-in Frequency"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("browser","mobileAppsAndDesktopClients","other");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "SESSION - User Sign-in Frequency";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "07d16e09-b8f2-46e9-9b90-71d85ce589b3";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyInterval              = "timeBased";
            SignInFrequencyIsEnabled             = $True;
            SignInFrequencyType                  = "hours";
            SignInFrequencyValue                 = 12;
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Protected Location Access"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @("Protected Location Access");
            BuiltInControls                      = @("mfa","compliantDevice");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Protected Location Access";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @("android","iOS","macOS","linux");
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "AND";
            Id                                   = "4d48713a-cc6c-4465-82fc-4eec07ebe937";
            IncludeApplications                  = @();
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @("Multifactor authentication trusted IPs");
            IncludePlatforms                     = @("all");
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Enforced MFA methods"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            AuthenticationStrength               = $EnforcedMFA;
            BuiltInControls                      = @();
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Enforced MFA methods";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "9d6abc09-c185-49c3-9496-a49e218a4960";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Require MFA for Risky Sign-ins"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Require MFA for Risky Sign-ins";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "1300f265-e5c9-4fac-be9d-74f28184c579";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @("high","medium");
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Require password change for high-risk users"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa","passwordChange");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Require password change for high-risk users";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "AND";
            Id                                   = "1a703bea-6f93-4082-a8d5-def43b410e60";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @("high");
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-BLOCK - Untrusted IPs"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("block");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "BLOCK - Untrusted IPs";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeLocations                     = @("Organisation Trusted IP Addresses");
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "af85e750-fcab-44c7-a6d0-74439df17078";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @("All");
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @();
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - Require phishing-resistant multifactor authentication for admins"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            AuthenticationStrength               = "Phishing-resistant MFA";
            BuiltInControls                      = @();
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - Require phishing-resistant multifactor authentication for admins";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "";
            ExcludeGroups                        = @();
            ExcludeLocations                     = @();
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @();
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "64fc4f78-ee4f-4a9f-a1b4-3ac8c3218a99";
            IncludeApplications                  = @("All");
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @();
            IncludePlatforms                     = @();
            IncludeRoles                         = @("Global Administrator","Security Administrator","SharePoint Administrator","Exchange Administrator","Conditional Access Administrator","Helpdesk Administrator","Billing Administrator","User Administrator","Authentication Administrator","Application Administrator","Cloud Application Administrator","Password Administrator","Privileged Authentication Administrator","Privileged Role Administrator","Attack Simulation Administrator","Attribute Assignment Administrator","Attribute Definition Administrator","Attribute Log Administrator","Authentication Extensibility Administrator","Authentication Policy Administrator","Azure DevOps Administrator","Azure Information Protection Administrator","B2C IEF Keyset Administrator","B2C IEF Policy Administrator","Cloud App Security Administrator","Cloud Device Administrator","Compliance Administrator","Compliance Data Administrator","Desktop Analytics Administrator","Domain Name Administrator","Dynamics 365 Administrator","Dynamics 365 Business Central Administrator","Edge Administrator","Exchange Recipient Administrator","Extended Directory User Administrator","External ID User Flow Administrator","External ID User Flow Attribute Administrator","External Identity Provider Administrator","Fabric Administrator","Global Secure Access Administrator","Groups Administrator","Hybrid Identity Administrator","Identity Governance Administrator","Insights Administrator","Intune Administrator","Kaizala Administrator","Knowledge Administrator","Lifecycle Workflows Administrator","License Administrator","Microsoft 365 Migration Administrator","Azure AD Joined Device Local Administrator","Microsoft Hardware Warranty Administrator","Network Administrator","Office Apps Administrator","Permissions Management Administrator","Power Platform Administrator","Printer Administrator","Search Administrator","Service Support Administrator","Skype for Business Administrator","Teams Administrator","Teams Communications Administrator","Teams Devices Administrator","Virtual Visits Administrator","Viva Goals Administrator","Viva Pulse Administrator","Windows 365 Administrator","Windows Update Deployment Administrator","Yammer Administrator");
            IncludeUserActions                   = @();
            IncludeUsers                         = @();
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADConditionalAccessPolicy "AADConditionalAccessPolicy-GRANT - MFA registration"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            AuthenticationContexts               = @();
            BuiltInControls                      = @("mfa");
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppTypes                       = @("all");
            CloudAppSecurityType                 = "";
            CustomAuthenticationFactors          = @();
            DeviceFilterRule                     = "";
            DisplayName                          = "GRANT - MFA registration";
            Ensure                               = "Present";
            ExcludeApplications                  = @();
            ExcludeExternalTenantsMembers        = @();
            ExcludeExternalTenantsMembershipKind = "all";
            ExcludeGroups                        = @($ConditionalExclude);
            ExcludeGuestOrExternalUserTypes      = @("internalGuest","b2bCollaborationGuest","b2bCollaborationMember","b2bDirectConnectUser","otherExternalUser","serviceProvider");
            ExcludeLocations                     = @("AllTrusted");
            ExcludePlatforms                     = @();
            ExcludeRoles                         = @("Global Administrator");
            ExcludeUsers                         = @();
            GrantControlOperator                 = "OR";
            Id                                   = "5bcdf2b4-2e25-4d16-b47c-cf2ee2d9bb5c";
            IncludeApplications                  = @();
            IncludeExternalTenantsMembers        = @();
            IncludeExternalTenantsMembershipKind = "";
            IncludeGroups                        = @();
            IncludeLocations                     = @("All");
            IncludePlatforms                     = @();
            IncludeRoles                         = @();
            IncludeUserActions                   = @("urn:user:registersecurityinfo");
            IncludeUsers                         = @("All");
            PersistentBrowserMode                = "";
            SignInFrequencyType                  = "";
            SignInRiskLevels                     = @();
            State                                = "enabledForReportingButNotEnforced";
            TenantId                             = $OrganizationName;
            UserRiskLevels                       = @();
        }
        AADCrossTenantAccessPolicyConfigurationDefault "AADCrossTenantAccessPolicyConfigurationDefault"
        {
            ApplicationId            = $ConfigurationData.NonNodeData.ApplicationId;
            B2BCollaborationInbound  = MSFT_AADCrossTenantAccessPolicyB2BSetting {
                Applications = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'allowed'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllApplications'
                            TargetType = 'application'
                        }
                    )
                }
                UsersAndGroups = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'allowed'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllUsers'
                            TargetType = 'user'
                        }
                    )
                }
            };
            B2BCollaborationOutbound = MSFT_AADCrossTenantAccessPolicyB2BSetting {
                Applications = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'allowed'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllApplications'
                            TargetType = 'application'
                        }
                    )
                }
                UsersAndGroups = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'allowed'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllUsers'
                            TargetType = 'user'
                        }
                    )
                }
            };
            B2BDirectConnectInbound  = MSFT_AADCrossTenantAccessPolicyB2BSetting {
                Applications = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'blocked'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllApplications'
                            TargetType = 'application'
                        }
                    )
                }
                UsersAndGroups = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'blocked'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllUsers'
                            TargetType = 'user'
                        }
                    )
                }
            };
            B2BDirectConnectOutbound = MSFT_AADCrossTenantAccessPolicyB2BSetting {
                Applications = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'blocked'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllApplications'
                            TargetType = 'application'
                        }
                    )
                }
                UsersAndGroups = MSFT_AADCrossTenantAccessPolicyTargetConfiguration{
                    AccessType = 'blocked'
                    Targets    = @(
                        MSFT_AADCrossTenantAccessPolicyTarget{
                            Target     = 'AllUsers'
                            TargetType = 'user'
                        }
                    )
                }
            };
            CertificateThumbprint    = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                   = "Present";
            InboundTrust             = MSFT_AADCrossTenantAccessPolicyInboundTrust {
                IsCompliantDeviceAccepted           = $False
                IsHybridAzureADJoinedDeviceAccepted = $False
                IsMfaAccepted                       = $False
            };
            IsSingleInstance         = "Yes";
            TenantId                 = $OrganizationName;
        }
        AADExternalIdentityPolicy "AADExternalIdentityPolicy"
        {
            AllowDeletedIdentitiesDataRemoval = $False;
            AllowExternalIdentitiesToLeave    = $True;
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            IsSingleInstance                  = "Yes";
            TenantId                          = $OrganizationName;
        }
        AADGroupLifecyclePolicy "AADGroupLifecyclePolicy"
        {
            AlternateNotificationEmails = @("Office365_Group_Expiration@agency.gov.au");
            ApplicationId               = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint       = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                      = "Present";
            GroupLifetimeInDays         = 180;
            IsSingleInstance            = "Yes";
            ManagedGroupTypes           = "All";
            TenantId                    = $OrganizationName;
        }
        AADNamedLocationPolicy "AADNamedLocationPolicy-Allowed Countries"
        {
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            CountriesAndRegions               = @("AU");
            CountryLookupMethod               = "clientIpAddress";
            DisplayName                       = "Allowed Countries";
            Ensure                            = "Present";
            Id                                = "1ea33f82-a850-412b-937b-e3cdea4b9dd7";
            IncludeUnknownCountriesAndRegions = $False;
            OdataType                         = "#microsoft.graph.countryNamedLocation";
            TenantId                          = $OrganizationName;
        }
        AADNamedLocationPolicy "AADNamedLocationPolicy-Organisation Trusted IP Addresses"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DisplayName           = "Organisation Trusted IP Addresses";
            Ensure                = "Present";
            Id                    = "07b0326c-7616-4354-b1aa-bde9d90d5a8d";
            IpRanges              = "1.1.1.1/32";
            IsTrusted             = $True;
            OdataType             = "#microsoft.graph.ipNamedLocation";
            TenantId              = $OrganizationName;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1 -ConditionalExclude $ConditionalExclude -EnforcedMFA $EnforcedMFA -TermsOfUse $TermsOfUse
