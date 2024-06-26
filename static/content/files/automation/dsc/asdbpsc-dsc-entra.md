# asdbpsc-dsc-entra
## AADAuthenticationContextClassReference-c1
|Item|Value|
|:---|:---|
|**IsAvailable**|True|
|**Description**|$Null
|**ResourceInstanceName**|AADAuthenticationContextClassReference-c1|
|**Ensure**|Present|
|**Id**|c1|
|**DisplayName**|Official Sensitive Locations - Managed Device Only|

## AADAuthenticationContextClassReference-c2
|Item|Value|
|:---|:---|
|**IsAvailable**|True|
|**Description**|$Null
|**ResourceInstanceName**|AADAuthenticationContextClassReference-c2|
|**Ensure**|Present|
|**Id**|c2|
|**DisplayName**|Protected Location Access|

## AADAuthenticationContextClassReference-c3
|Item|Value|
|:---|:---|
|**IsAvailable**|True|
|**Description**|$Null
|**ResourceInstanceName**|AADAuthenticationContextClassReference-c3|
|**Ensure**|Present|
|**Id**|c3|
|**DisplayName**|Official Sensitive Location Access|

## AADAuthorizationPolicy
|Item|Value|
|:---|:---|
|**DefaultUserRoleAllowedToCreateSecurityGroups**|False|
|**DefaultUserRoleAllowedToReadBitlockerKeysForOwnedDevice**|True|
|**DisplayName**|Authorization Policy|
|**GuestUserRole**|RestrictedGuest|
|**DefaultUserRoleAllowedToCreateTenants**|False|
|**Description**|Used to manage authorization related settings across the company.|
|**DefaultUserRoleAllowedToReadOtherUsers**|True|
|**Ensure**|Present|
|**AllowedToSignUpEmailBasedSubscriptions**|True|
|**AllowedToUseSSPR**|True|
|**PermissionGrantPolicyIdsAssignedToDefaultUserRole**|ManagePermissionGrantsForOwnedResource.microsoft-dynamically-managed-permissions-for-chat<br>ManagePermissionGrantsForOwnedResource.microsoft-dynamically-managed-permissions-for-team<br><br>
|**AllowInvitesFrom**|none|
|**AllowEmailVerifiedUsersToJoinOrganization**|True|
|**ResourceInstanceName**|AADAuthorizationPolicy|
|**IsSingleInstance**|Yes|
|**DefaultUserRoleAllowedToCreateApps**|False|
|**BlockMsolPowerShell**|False|

## AADConditionalAccessPolicy-BLOCK - Countries Not Allowed
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|BLOCK - Countries Not Allowed|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-BLOCK - Countries Not Allowed|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|Allowed Countries<br><br>
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|block<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|1e07844e-825d-4e30-824a-3cb0f34cdd2a|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|All<br><br>
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-BLOCK - Guest Access
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|BLOCK - Guest Access|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-BLOCK - Guest Access|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeGuestOrExternalUserTypes**|internalGuest<br>b2bCollaborationGuest<br>b2bCollaborationMember<br>b2bDirectConnectUser<br>otherExternalUser<br>serviceProvider<br><br>
|**IncludeExternalTenantsMembershipKind**|all|
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|block<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|efd4b3c6-e78d-49ad-ac6a-ca0436576317|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|Office365<br><br>
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|exchangeActiveSync<br>browser<br>mobileAppsAndDesktopClients<br>other<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|$Null

## AADConditionalAccessPolicy-BLOCK - High Risk Sign-Ins
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|BLOCK - High Risk Sign-Ins|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-BLOCK - High Risk Sign-Ins|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|block<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|4f73b5d4-020e-4631-af22-d6ddd914d1bc|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|high<br><br>
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|exchangeActiveSync<br>browser<br>mobileAppsAndDesktopClients<br>other<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-BLOCK - Legacy Authentication
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|BLOCK - Legacy Authentication|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-BLOCK - Legacy Authentication|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|block<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|03cd82f7-61dc-4b79-ba6f-825733e38286|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|exchangeActiveSync<br>other<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-BLOCK - Unapproved Devices
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|BLOCK - Unapproved Devices|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-BLOCK - Unapproved Devices|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|android<br>iOS<br>windowsPhone<br>macOS<br>linux<br><br>
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|block<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|15dc3475-c418-47b4-a9f9-ea2a94fe8f02|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Guest Access
|Item|Value|
|:---|:---|
|**IncludeApplications**|Office365<br><br>
|**DisplayName**|GRANT - Guest Access|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Guest Access|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeGuestOrExternalUserTypes**|internalGuest<br>b2bCollaborationGuest<br>b2bCollaborationMember<br>b2bDirectConnectUser<br>otherExternalUser<br>serviceProvider<br><br>
|**IncludeExternalTenantsMembershipKind**|all|
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|windows<br><br>
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|d015040f-99fd-4e7c-abc1-35f5e5a9c728|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|disabled|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|browser<br>mobileAppsAndDesktopClients<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|$Null

## AADConditionalAccessPolicy-GRANT - Intune Enrolment
|Item|Value|
|:---|:---|
|**IncludeApplications**|0000000a-0000-0000-c000-000000000000<br><br>
|**DisplayName**|GRANT - Intune Enrolment|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Intune Enrolment|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|iOS<br>windows<br><br>
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|504c3395-a171-41a9-ad23-0038beecd904|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - iOS Device Access
|Item|Value|
|:---|:---|
|**IncludeApplications**|Office365<br><br>
|**DisplayName**|GRANT - iOS Device Access|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - iOS Device Access|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|iOS<br><br>
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|compliantDevice<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|705e2720-23af-4a24-bfe6-c17a735342c8|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|0000000a-0000-0000-c000-000000000000<br><br>
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|browser<br>mobileAppsAndDesktopClients<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Terms of use
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|GRANT - Terms of use|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Terms of use|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**TermsOfUse**|$TermsOfUse|
|**BuiltInControls**|$Null
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|485b13ff-9f66-4954-b74e-da7b8f2e243e|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|browser<br>mobileAppsAndDesktopClients<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Windows Device Access
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|GRANT - Windows Device Access|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Windows Device Access|
|**GrantControlOperator**|AND|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|windows<br><br>
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br>compliantDevice<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|5b7b7e56-3ae4-464f-80d2-da7e911e80ad|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|0000000a-0000-0000-c000-000000000000<br><br>
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|browser<br>mobileAppsAndDesktopClients<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-SESSION - Admin Sign-in Frequency
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|SESSION - Admin Sign-in Frequency|
|**IncludeRoles**|Application Administrator<br>Application Developer<br>Attack Payload Author<br>Attack Simulation Administrator<br>Attribute Definition Administrator<br>Attribute Assignment Reader<br>Attribute Assignment Administrator<br>Reports Reader<br>Organizational Messages Writer<br>SharePoint Administrator<br>Yammer Administrator<br>Windows Update Deployment Administrator<br>Windows 365 Administrator<br>Viva Goals Administrator<br>Virtual Visits Administrator<br>User Experience Success Manager<br>User Administrator<br>Usage Summary Reports Reader<br>Tenant Creator<br>Teams Devices Administrator<br>Teams Communications Support Specialist<br>Teams Communications Support Engineer<br>Teams Communications Administrator<br>Teams Administrator<br>Skype for Business Administrator<br>Service Support Administrator<br>Security Reader<br>Security Administrator<br>Security Operator<br>Search Editor<br>Search Administrator<br>Privileged Role Administrator<br>Privileged Authentication Administrator<br>Printer Technician<br>Printer Administrator<br>Power Platform Administrator<br>Fabric Administrator<br>Permissions Management Administrator<br>Password Administrator<br>Office Apps Administrator<br>Network Administrator<br>Microsoft Hardware Warranty Specialist<br>Microsoft Hardware Warranty Administrator<br>Message Center Reader<br>Message Center Privacy Reader<br>Lifecycle Workflows Administrator<br>License Administrator<br>Knowledge Manager<br>Knowledge Administrator<br>Kaizala Administrator<br>Intune Administrator<br>Insights Business Leader<br>Insights Analyst<br>Insights Administrator<br>Identity Governance Administrator<br>Hybrid Identity Administrator<br>Helpdesk Administrator<br>Guest Inviter<br>Groups Administrator<br>Global Reader<br>Global Administrator<br>External Identity Provider Administrator<br>External ID User Flow Attribute Administrator<br>External ID User Flow Administrator<br>Exchange Recipient Administrator<br>Exchange Administrator<br>Edge Administrator<br>Dynamics 365 Administrator<br>Domain Name Administrator<br>Directory Writers<br>Directory Synchronization Accounts<br>Directory Readers<br>Desktop Analytics Administrator<br>Customer LockBox Access Approver<br>Conditional Access Administrator<br>Compliance Data Administrator<br>Compliance Administrator<br>Cloud Device Administrator<br>Cloud Application Administrator<br>Cloud App Security Administrator<br>Billing Administrator<br>B2C IEF Policy Administrator<br>Azure Information Protection Administrator<br>B2C IEF Keyset Administrator<br>Azure DevOps Administrator<br>Azure AD Joined Device Local Administrator<br>Authentication Policy Administrator<br>Authentication Administrator<br>Authentication Extensibility Administrator<br>Attribute Definition Reader<br><br>
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-SESSION - Admin Sign-in Frequency|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**SignInFrequencyIsEnabled**|True|
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|f14f88d7-2665-4ce6-b89b-125b11588383|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|hours|
|**SignInFrequencyValue**|4|
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**SignInFrequencyInterval**|timeBased|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|browser<br>mobileAppsAndDesktopClients<br>other<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|$Null

## AADConditionalAccessPolicy-SESSION - User Sign-in Frequency
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|SESSION - User Sign-in Frequency|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-SESSION - User Sign-in Frequency|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**SignInFrequencyIsEnabled**|True|
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|07d16e09-b8f2-46e9-9b90-71d85ce589b3|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|hours|
|**SignInFrequencyValue**|12|
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**SignInFrequencyInterval**|timeBased|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|browser<br>mobileAppsAndDesktopClients<br>other<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Protected Location Access
|Item|Value|
|:---|:---|
|**IncludeApplications**|$Null
|**DisplayName**|GRANT - Protected Location Access|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Protected Location Access|
|**GrantControlOperator**|AND|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|all<br><br>
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br>compliantDevice<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|Protected Location Access<br><br>
|**Id**|4d48713a-cc6c-4465-82fc-4eec07ebe937|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|android<br>iOS<br>macOS<br>linux<br><br>
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|Multifactor authentication trusted IPs<br><br>
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Enforced MFA methods
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|GRANT - Enforced MFA methods|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Enforced MFA methods|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**IncludeUserActions**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|$Null
|**AuthenticationStrength**|$EnforcedMFA|
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|9d6abc09-c185-49c3-9496-a49e218a4960|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Require MFA for Risky Sign-ins
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|GRANT - Require MFA for Risky Sign-ins|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Require MFA for Risky Sign-ins|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|1300f265-e5c9-4fac-be9d-74f28184c579|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|high<br>medium<br><br>
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Require password change for high-risk users
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|GRANT - Require password change for high-risk users|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Require password change for high-risk users|
|**GrantControlOperator**|AND|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|high<br><br>
|**BuiltInControls**|mfa<br>passwordChange<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|1a703bea-6f93-4082-a8d5-def43b410e60|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-BLOCK - Untrusted IPs
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|BLOCK - Untrusted IPs|
|**IncludeRoles**|$Null
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-BLOCK - Untrusted IPs|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|Organisation Trusted IP Addresses<br><br>
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|block<br><br>
|**IncludeUserActions**|$Null
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|af85e750-fcab-44c7-a6d0-74439df17078|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|All<br><br>
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADConditionalAccessPolicy-GRANT - Require phishing-resistant multifactor authentication for admins
|Item|Value|
|:---|:---|
|**IncludeApplications**|All<br><br>
|**DisplayName**|GRANT - Require phishing-resistant multifactor authentication for admins|
|**IncludeRoles**|Global Administrator<br>Security Administrator<br>SharePoint Administrator<br>Exchange Administrator<br>Conditional Access Administrator<br>Helpdesk Administrator<br>Billing Administrator<br>User Administrator<br>Authentication Administrator<br>Application Administrator<br>Cloud Application Administrator<br>Password Administrator<br>Privileged Authentication Administrator<br>Privileged Role Administrator<br>Attack Simulation Administrator<br>Attribute Assignment Administrator<br>Attribute Definition Administrator<br>Attribute Log Administrator<br>Authentication Extensibility Administrator<br>Authentication Policy Administrator<br>Azure DevOps Administrator<br>Azure Information Protection Administrator<br>B2C IEF Keyset Administrator<br>B2C IEF Policy Administrator<br>Cloud App Security Administrator<br>Cloud Device Administrator<br>Compliance Administrator<br>Compliance Data Administrator<br>Desktop Analytics Administrator<br>Domain Name Administrator<br>Dynamics 365 Administrator<br>Dynamics 365 Business Central Administrator<br>Edge Administrator<br>Exchange Recipient Administrator<br>Extended Directory User Administrator<br>External ID User Flow Administrator<br>External ID User Flow Attribute Administrator<br>External Identity Provider Administrator<br>Fabric Administrator<br>Global Secure Access Administrator<br>Groups Administrator<br>Hybrid Identity Administrator<br>Identity Governance Administrator<br>Insights Administrator<br>Intune Administrator<br>Kaizala Administrator<br>Knowledge Administrator<br>Lifecycle Workflows Administrator<br>License Administrator<br>Microsoft 365 Migration Administrator<br>Azure AD Joined Device Local Administrator<br>Microsoft Hardware Warranty Administrator<br>Network Administrator<br>Office Apps Administrator<br>Permissions Management Administrator<br>Power Platform Administrator<br>Printer Administrator<br>Search Administrator<br>Service Support Administrator<br>Skype for Business Administrator<br>Teams Administrator<br>Teams Communications Administrator<br>Teams Devices Administrator<br>Virtual Visits Administrator<br>Viva Goals Administrator<br>Viva Pulse Administrator<br>Windows 365 Administrator<br>Windows Update Deployment Administrator<br>Yammer Administrator<br><br>
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - Require phishing-resistant multifactor authentication for admins|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**IncludeUserActions**|$Null
|**ExcludeLocations**|$Null
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|$Null
|**AuthenticationStrength**|Phishing-resistant MFA|
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|64fc4f78-ee4f-4a9f-a1b4-3ac8c3218a99|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|$Null
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|$Null
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|$Null

## AADConditionalAccessPolicy-GRANT - MFA registration
|Item|Value|
|:---|:---|
|**IncludeApplications**|$Null
|**DisplayName**|GRANT - MFA registration|
|**IncludeRoles**|$Null
|**State**|enabledForReportingButNotEnforced|
|**ExcludeUsers**|$Null
|**ResourceInstanceName**|AADConditionalAccessPolicy-GRANT - MFA registration|
|**GrantControlOperator**|OR|
|**CustomAuthenticationFactors**|$Null
|**IncludeExternalTenantsMembers**|$Null
|**IncludeExternalTenantsMembershipKind**|$Null
|**IncludeGroups**|$Null
|**PersistentBrowserMode**|$Null
|**IncludePlatforms**|$Null
|**ExcludeGroups**|$Null
|**ExcludeLocations**|AllTrusted<br><br>
|**DeviceFilterRule**|$Null
|**UserRiskLevels**|$Null
|**BuiltInControls**|mfa<br><br>
|**IncludeUserActions**|urn:user:registersecurityinfo<br><br>
|**Ensure**|Present|
|**AuthenticationContexts**|$Null
|**Id**|5bcdf2b4-2e25-4d16-b47c-cf2ee2d9bb5c|
|**CloudAppSecurityType**|$Null
|**SignInRiskLevels**|$Null
|**ExcludeRoles**|Global Administrator<br><br>
|**SignInFrequencyType**|$Null
|**ExcludeApplications**|$Null
|**ExcludeExternalTenantsMembershipKind**|all|
|**ExcludeGuestOrExternalUserTypes**|internalGuest<br>b2bCollaborationGuest<br>b2bCollaborationMember<br>b2bDirectConnectUser<br>otherExternalUser<br>serviceProvider<br><br>
|**ExcludePlatforms**|$Null
|**ClientAppTypes**|all<br><br>
|**IncludeLocations**|All<br><br>
|**ExcludeExternalTenantsMembers**|$Null
|**IncludeUsers**|All<br><br>

## AADCrossTenantAccessPolicyConfigurationDefault
|Item|Value|
|:---|:---|
|**B2BDirectConnectOutbound**|System.Collections.Hashtable|
|**ResourceInstanceName**|AADCrossTenantAccessPolicyConfigurationDefault|
|**B2BCollaborationInbound**|System.Collections.Hashtable|
|**IsSingleInstance**|Yes|
|**B2BDirectConnectInbound**|System.Collections.Hashtable|
|**B2BCollaborationOutbound**|System.Collections.Hashtable|
|**InboundTrust**|System.Collections.Hashtable|
|**Ensure**|Present|

## AADExternalIdentityPolicy
|Item|Value|
|:---|:---|
|**AllowExternalIdentitiesToLeave**|True|
|**ResourceInstanceName**|AADExternalIdentityPolicy|
|**AllowDeletedIdentitiesDataRemoval**|False|
|**IsSingleInstance**|Yes|

## AADGroupLifecyclePolicy
|Item|Value|
|:---|:---|
|**Ensure**|Present|
|**ResourceInstanceName**|AADGroupLifecyclePolicy|
|**AlternateNotificationEmails**|Office365_Group_Expiration@agency.gov.au<br><br>
|**ManagedGroupTypes**|All|
|**IsSingleInstance**|Yes|
|**GroupLifetimeInDays**|180|

## AADNamedLocationPolicy-Allowed Countries
|Item|Value|
|:---|:---|
|**IncludeUnknownCountriesAndRegions**|False|
|**Id**|1ea33f82-a850-412b-937b-e3cdea4b9dd7|
|**ResourceInstanceName**|AADNamedLocationPolicy-Allowed Countries|
|**Ensure**|Present|
|**OdataType**|#microsoft.graph.countryNamedLocation|
|**CountriesAndRegions**|AU<br><br>
|**DisplayName**|Allowed Countries|
|**CountryLookupMethod**|clientIpAddress|

## AADNamedLocationPolicy-Organisation Trusted IP Addresses
|Item|Value|
|:---|:---|
|**Id**|07b0326c-7616-4354-b1aa-bde9d90d5a8d|
|**ResourceInstanceName**|AADNamedLocationPolicy-Organisation Trusted IP Addresses|
|**Ensure**|Present|
|**IsTrusted**|True|
|**OdataType**|#microsoft.graph.ipNamedLocation|
|**IpRanges**|1.1.1.1/32<br><br>
|**DisplayName**|Organisation Trusted IP Addresses|


