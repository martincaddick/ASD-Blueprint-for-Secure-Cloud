# Generated with Microsoft365DSC version 1.24.424.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
)

Configuration M365TenantConfig
{
    param (
    )

    $OrganizationName = $ConfigurationData.NonNodeData.OrganizationName

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.24.424.1'

    Node localhost
    {
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Add PSPF X-Header and Subject Marking"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "This DLP policy is intended to apply X-Protective-Marking X-headers and subject markings to emails";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Add PSPF X-Header and Subject Marking";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 0;
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Block un-labelled email"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Block emails when the user has not set a classification";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Block un-labelled email";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 1;
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Block non-permitted classifications"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Block classifications which are not permitted to be stored on the system.";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Block non-permitted classifications";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 2;
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Block email of PROTECTED items"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Block email of PROTECTED items";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Block email of PROTECTED items";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 3;
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Block external sharing of PROTECTED items"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Block external sharing of PROTECTED items";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Block external sharing of PROTECTED items";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 4;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Limit internal sharing of PROTECTED items"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "This policy is intended to ensure that if a user who is not approved for access to PROTECTED content does gain access, they are not able to further share it. This will not block receipt of a sharing link by unauthorised internal users. To mitigate related internal risks, consider other controls";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Limit internal sharing of PROTECTED items";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 5;
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Warn users distributing OFFICIAL: Sensitive items"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Warn users distributing OFFICIAL: Sensitive items";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Warn users distributing OFFICIAL: Sensitive items";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 6;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Australia Privacy Act Enhanced"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Helps detect the presence of information commonly considered to be subject to the privacy act in Australia, like driver's license and passport number. This enhanced template extends the original by also detecting people's full names, medical terms and conditions, and Australia physical addresses.";
            EndpointDlpLocation                   = "All";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Australia Privacy Act Enhanced";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 7;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocation                         = "All";
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Australia Personally Identifiable Information (PII) Data"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Helps detect the presence of information commonly considered to be personally identifiable information (PII) in Australia, like tax file number and driver's license.";
            EndpointDlpLocation                   = "All";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Australia Personally Identifiable Information (PII) Data";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocation          = "All";
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 8;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocation                         = "All";
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocation              = "All";
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Australia Health Records Act (HRIP Act) Enhanced"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Helps detect the presence of information commonly considered to be subject to the Health Records and Information Privacy (HRIP) act in Australia, like medical account number and tax file number. This enhanced template extends the original by also detecting people's full names, medical terms and conditions, and Australia physical addresses.";
            EndpointDlpLocation                   = "All";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Australia Health Records Act (HRIP Act) Enhanced";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 9;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocation                         = "All";
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Australia Financial Data"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "Helps detect the presence of information commonly considered to be financial data in Australia, including credit cards, and SWIFT codes.";
            EndpointDlpLocation                   = "All";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Australia Financial Data";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocation          = "All";
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 10;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocation                         = "All";
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocation              = "All";
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Limit disclosure of potentially PROTECTED information"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Limit disclosure of potentially PROTECTED information";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 11;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocation                         = "All";
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCDLPCompliancePolicy "SCDLPCompliancePolicy-Limit disclosure of sensitive information"
        {
            ApplicationId                         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                 = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                               = "";
            EndpointDlpLocationException          = @();
            Ensure                                = "Present";
            ExchangeLocation                      = "All";
            ExchangeSenderMemberOf                = @();
            ExchangeSenderMemberOfException       = @();
            Mode                                  = "Enable";
            Name                                  = "Limit disclosure of sensitive information";
            OneDriveLocation                      = "All";
            OneDriveLocationException             = @();
            OnPremisesScannerDlpLocationException = @();
            PowerBIDlpLocationException           = @();
            Priority                              = 12;
            SharePointLocation                    = "All";
            SharePointLocationException           = @();
            TeamsLocation                         = "All";
            TeamsLocationException                = @();
            TenantId                              = $OrganizationName;
            ThirdPartyAppDlpLocationException     = @();
        }
        SCLabelPolicy "SCLabelPolicy-All User Policy"
        {
            AdvancedSettings      = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'mandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'attachmentaction'
                    Value = 'Recommended'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'requiredowngradejustification'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'powerbimandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'siteandgroupmandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'teamworkmandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'disablemandatoryinoutlook'
                    Value = 'false'
                }
            );
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment               = "";
            Ensure                = "Present";
            ExchangeLocation      = "All";
            Labels                = @("OS LS","OS NC LP","OS PP","UNOFFICIAL","OS LP","OS NC PP","OFFICIAL Sensitive","OFFICIAL","OS group","OS NC","OS NC LS");
            Name                  = "All User Policy";
            TenantId              = $OrganizationName;
        }
        SCLabelPolicy "SCLabelPolicy-Test Policy"
        {
            AdvancedSettings      = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'mandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'attachmentaction'
                    Value = 'Automatic'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'requiredowngradejustification'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'powerbimandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'siteandgroupmandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'teamworkmandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'disablemandatoryinoutlook'
                    Value = 'false'
                }
            );
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment               = "This policy is intended for testing the impact of policy setting changes and would not typically differ from the standard all user policy except for during the testing of policy changes.";
            Ensure                = "Present";
            ExchangeLocation      = "All";
            Labels                = @("UNOFFICIAL","P NC PP","OS NC LP","P NC LP","P NC","P C LP","P C LS","P NC LS","OS NC PP","PROTECTED","P C","OS NC LS","OS LS","P C PP","OS NC","P LS","OS PP","OS LP","P group","OFFICIAL","OS group","P PP","OFFICIAL Sensitive","P LP");
            Name                  = "Test Policy";
            TenantId              = $OrganizationName;
        }
        SCLabelPolicy "SCLabelPolicy-Protected Policy"
        {
            AdvancedSettings      = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'mandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'attachmentaction'
                    Value = 'Recommended'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'requiredowngradejustification'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'powerbimandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'siteandgroupmandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'teamworkmandatory'
                    Value = 'true'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'disablemandatoryinoutlook'
                    Value = 'false'
                }
            );
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment               = "";
            Ensure                = "Present";
            ExchangeLocation      = "All";
            Labels                = @("PROTECTED","P NC LP","P C LP","P LS","P group","P LP","P NC","P NC LS","P PP","P C","P NC PP","P C LS","P C PP");
            Name                  = "Protected Policy";
            TenantId              = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-Exchange mailboxes 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            DynamicScopeLocation         = @();
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @("All");
            ExchangeLocationException    = @();
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "Exchange mailboxes 7 year hold";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
            TenantId                     = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-Microsoft 365 Group mailboxes & sites 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            DynamicScopeLocation         = @();
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            ModernGroupLocation          = @("All");
            ModernGroupLocationException = @();
            Name                         = "Microsoft 365 Group mailboxes & sites 7 year hold";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
            TenantId                     = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-OneDrive accounts 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            DynamicScopeLocation         = @();
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "OneDrive accounts 7 year hold";
            OneDriveLocation             = @("All");
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
            TenantId                     = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-Exchange public folders 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            DynamicScopeLocation         = @();
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "Exchange public folders 7 year hold";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @("All");
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
            TenantId                     = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-Teams chats and Copilot interactions 7 year hold"
        {
            ApplicationId                 = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint         = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                       = "";
            Enabled                       = $True;
            Ensure                        = "Present";
            Name                          = "Teams chats and Copilot interactions 7 year hold";
            RestrictiveRetention          = $False;
            TeamsChannelLocation          = @();
            TeamsChannelLocationException = @();
            TeamsChatLocation             = @("All");
            TeamsChatLocationException    = @();
            TenantId                      = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-Sharepoint classic 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            DynamicScopeLocation         = @();
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "Sharepoint classic 7 year hold";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @("All");
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
            TenantId                     = $OrganizationName;
        }
        SCRetentionCompliancePolicy "SCRetentionCompliancePolicy-Teams channel messages 7 year hold"
        {
            ApplicationId                 = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint         = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                       = "";
            Enabled                       = $True;
            Ensure                        = "Present";
            Name                          = "Teams channel messages 7 year hold";
            RestrictiveRetention          = $False;
            TeamsChannelLocation          = @("All");
            TeamsChannelLocationException = @();
            TeamsChatLocation             = @();
            TeamsChatLocationException    = @();
            TenantId                      = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-Exchange mailboxes 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "CreationAgeInDays";
            Name                         = "Exchange mailboxes 7 year hold";
            Policy                       = "Exchange mailboxes 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-Microsoft 365 Group mailboxes & sites 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "ModificationAgeInDays";
            Name                         = "Microsoft 365 Group mailboxes & sites 7 year hold";
            Policy                       = "Microsoft 365 Group mailboxes & sites 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-OneDrive accounts 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "ModificationAgeInDays";
            Name                         = "OneDrive accounts 7 year hold";
            Policy                       = "OneDrive accounts 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-Exchange public folders 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "ModificationAgeInDays";
            Name                         = "Exchange public folders 7 year hold";
            Policy                       = "Exchange public folders 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-Teams chats and Copilot interactions 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            Ensure                       = "Present";
            ExpirationDateOption         = "CreationAgeInDays";
            Name                         = "Teams chats and Copilot interactions 7 year hold";
            Policy                       = "Teams chats and Copilot interactions 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-Sharepoint classic 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "ModificationAgeInDays";
            Name                         = "Sharepoint classic 7 year hold";
            Policy                       = "Sharepoint classic 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCRetentionComplianceRule "SCRetentionComplianceRule-Teams channel messages 7 year hold"
        {
            ApplicationId                = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                      = "";
            Ensure                       = "Present";
            ExpirationDateOption         = "CreationAgeInDays";
            Name                         = "Teams channel messages 7 year hold";
            Policy                       = "Teams channel messages 7 year hold";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
            TenantId                     = $OrganizationName;
        }
        SCSensitivityLabel "SCSensitivityLabel-UNOFFICIAL"
        {
            AdvancedSettings                               = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                                  = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment             = "Center";
            ApplyContentMarkingFooterEnabled               = $True;
            ApplyContentMarkingFooterFontColor             = "#FF0000";
            ApplyContentMarkingFooterFontSize              = "12";
            ApplyContentMarkingFooterMargin                = "5";
            ApplyContentMarkingFooterText                  = "UNOFFICIAL";
            ApplyContentMarkingHeaderAlignment             = "Center";
            ApplyContentMarkingHeaderEnabled               = $True;
            ApplyContentMarkingHeaderFontColor             = "#FF0000";
            ApplyContentMarkingHeaderFontSize              = "12";
            ApplyContentMarkingHeaderMargin                = "5";
            ApplyContentMarkingHeaderText                  = "UNOFFICIAL";
            CertificateThumbprint                          = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                                        = "";
            ContentType                                    = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                                    = "UNOFFICIAL";
            Ensure                                         = "Present";
            LocaleSettings                                 = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'UNOFFICIAL'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'No damage. This information does not form part of official duty.'
                        }
                    )
                }
            );
            Name                                           = "UNOFFICIAL";
            Priority                                       = 0;
            SiteAndGroupExternalSharingControlType         = "ExternalUserSharingOnly";
            SiteAndGroupProtectionAllowAccessToGuestUsers  = $True;
            SiteAndGroupProtectionAllowEmailFromGuestUsers = $True;
            SiteAndGroupProtectionAllowFullAccess          = $False;
            SiteAndGroupProtectionAllowLimitedAccess       = $False;
            SiteAndGroupProtectionBlockAccess              = $False;
            SiteAndGroupProtectionEnabled                  = $True;
            SiteAndGroupProtectionPrivacy                  = "public";
            TenantId                                       = $OrganizationName;
            Tooltip                                        = "No damage. This information does not form part of official duty.";
        }
        SCSensitivityLabel "SCSensitivityLabel-OFFICIAL"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "OFFICIAL";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'OFFICIAL'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'No or insignificant damage. This is the majority of routine information.'
                        }
                    )
                }
            );
            Name                               = "OFFICIAL";
            Priority                           = 1;
            TenantId                           = $OrganizationName;
            Tooltip                            = "No or insignificant damage. This is the majority of routine information.";
        }
        SCSensitivityLabel "SCSensitivityLabel-OFFICIAL Sensitive Group"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterEnabled   = $True;
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderEnabled   = $True;
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup");
            DisplayName                        = "OFFICIAL Sensitive Group";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'OFFICIAL Sensitive Group'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS group";
            Priority                           = 2;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-OFFICIAL Sensitive"
        {
            AdvancedSettings                               = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                                  = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment             = "Center";
            ApplyContentMarkingFooterEnabled               = $True;
            ApplyContentMarkingFooterFontColor             = "#FF0000";
            ApplyContentMarkingFooterFontSize              = "12";
            ApplyContentMarkingFooterMargin                = "5";
            ApplyContentMarkingFooterText                  = "OFFICIAL: Sensitive";
            ApplyContentMarkingHeaderAlignment             = "Center";
            ApplyContentMarkingHeaderEnabled               = $True;
            ApplyContentMarkingHeaderFontColor             = "#FF0000";
            ApplyContentMarkingHeaderFontSize              = "12";
            ApplyContentMarkingHeaderMargin                = "5";
            ApplyContentMarkingHeaderText                  = "OFFICIAL: Sensitive";
            CertificateThumbprint                          = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                                        = "";
            ContentType                                    = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                                    = "OFFICIAL Sensitive";
            Ensure                                         = "Present";
            LocaleSettings                                 = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'OFFICIAL Sensitive'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                                           = "OFFICIAL Sensitive";
            ParentId                                       = "OS group";
            Priority                                       = 3;
            SiteAndGroupExternalSharingControlType         = "ExistingExternalUserSharingOnly";
            SiteAndGroupProtectionAllowAccessToGuestUsers  = $True;
            SiteAndGroupProtectionAllowEmailFromGuestUsers = $True;
            SiteAndGroupProtectionAllowFullAccess          = $False;
            SiteAndGroupProtectionAllowLimitedAccess       = $False;
            SiteAndGroupProtectionBlockAccess              = $True;
            SiteAndGroupProtectionEnabled                  = $True;
            SiteAndGroupProtectionPrivacy                  = "private";
            TenantId                                       = $OrganizationName;
            Tooltip                                        = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-Legal-Privilege"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterEnabled   = $True;
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//Legal-Privilege";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderEnabled   = $True;
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//Legal-Privilege";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "Legal-Privilege";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Legal-Privilege'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS LP";
            ParentId                           = "OS group";
            Priority                           = 4;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-Legislative Secrecy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterEnabled   = $True;
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//Legislative-Secrecy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderEnabled   = $True;
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//Legislative-Secrecy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "Legislative Secrecy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Legislative Secrecy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS LS";
            ParentId                           = "OS group";
            Priority                           = 5;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-Personal-Privacy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterEnabled   = $True;
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//Personal-Privacy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderEnabled   = $True;
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//Personal-Privacy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "Personal-Privacy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Personal-Privacy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS PP";
            ParentId                           = "OS group";
            Priority                           = 6;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterEnabled   = $True;
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//NATIONAL CABINET";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderEnabled   = $True;
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//NATIONAL CABINET";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS NC";
            ParentId                           = "OS group";
            Priority                           = 7;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET - Legal-Privilege"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//NATIONAL CABINET//Legal-Privilege";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//NATIONAL CABINET//Legal-Privilege";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET - Legal-Privilege";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET - Legal-Privilege'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS NC LP";
            ParentId                           = "OS group";
            Priority                           = 8;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET - Legislative-Secrecy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//NATIONAL CABINET//Legislative-Secrecy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//NATIONAL CABINET//Legislative-Secrecy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET - Legislative-Secrecy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET - Legislative-Secrecy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS NC LS";
            ParentId                           = "OS group";
            Priority                           = 9;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET - Personal-Privacy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '4ea29cc6-1593-4045-aeb8-01c40219029e'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "OFFICIAL: Sensitive//NATIONAL CABINET//Personal-Privacy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "OFFICIAL: Sensitive//NATIONAL CABINET//Personal-Privacy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET - Personal-Privacy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET - Personal-Privacy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.'
                        }
                    )
                }
            );
            Name                               = "OS NC PP";
            ParentId                           = "OS group";
            Priority                           = 10;
            TenantId                           = $OrganizationName;
            Tooltip                            = "Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.";
        }
        SCSensitivityLabel "SCSensitivityLabel-PROTECTED Group"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterEnabled   = $True;
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderEnabled   = $True;
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup");
            DisplayName                        = "PROTECTED Group";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'PROTECTED Group'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P group";
            Priority                           = 11;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-PROTECTED"
        {
            AdvancedSettings                               = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                                  = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment             = "Center";
            ApplyContentMarkingFooterEnabled               = $True;
            ApplyContentMarkingFooterFontColor             = "#FF0000";
            ApplyContentMarkingFooterFontSize              = "12";
            ApplyContentMarkingFooterMargin                = "5";
            ApplyContentMarkingFooterText                  = "PROTECTED";
            ApplyContentMarkingHeaderAlignment             = "Center";
            ApplyContentMarkingHeaderEnabled               = $True;
            ApplyContentMarkingHeaderFontColor             = "#FF0000";
            ApplyContentMarkingHeaderFontSize              = "12";
            ApplyContentMarkingHeaderMargin                = "5";
            ApplyContentMarkingHeaderText                  = "PROTECTED";
            CertificateThumbprint                          = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                                        = "";
            ContentType                                    = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                                    = "PROTECTED";
            EncryptionContentExpiredOnDateInDaysOrNever    = "Never";
            EncryptionEnabled                              = $True;
            EncryptionOfflineAccessDays                    = "3";
            EncryptionProtectionType                       = "template";
            EncryptionRightsDefinitions                    = "grp-protected-users@organisation.gov.au:VIEW,VIEWRIGHTSDATA,DOCEDIT,EDIT,PRINT,EXTRACT,REPLY,REPLYALL,FORWARD,OBJMODEL";
            Ensure                                         = "Present";
            LocaleSettings                                 = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'PROTECTED'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                                           = "PROTECTED";
            ParentId                                       = "P group";
            Priority                                       = 12;
            SiteAndGroupExternalSharingControlType         = "Disabled";
            SiteAndGroupProtectionAllowAccessToGuestUsers  = $True;
            SiteAndGroupProtectionAllowEmailFromGuestUsers = $True;
            SiteAndGroupProtectionAllowFullAccess          = $False;
            SiteAndGroupProtectionAllowLimitedAccess       = $False;
            SiteAndGroupProtectionBlockAccess              = $False;
            SiteAndGroupProtectionEnabled                  = $True;
            SiteAndGroupProtectionPrivacy                  = "private";
            TenantId                                       = $OrganizationName;
            Tooltip                                        = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-Legal-Privilege-2"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//Legal-Privilege";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//Legal-Privilege";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "Legal-Privilege";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Legal-Privilege'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P LP";
            ParentId                           = "P group";
            Priority                           = 13;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-Legislative-Secrecy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//Legislative-Secrecy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//Legislative-Secrecy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "Legislative-Secrecy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Legislative-Secrecy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P LS";
            ParentId                           = "P group";
            Priority                           = 14;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-Personal-Privacy-2"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//Personal-Privacy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//Personal-Privacy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "Personal-Privacy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Personal-Privacy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P PP";
            ParentId                           = "P group";
            Priority                           = 15;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET-2"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//NATIONAL CABINET";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//NATIONAL CABINET";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P NC";
            ParentId                           = "P group";
            Priority                           = 16;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET - Legal-Privilege-2"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//NATIONAL CABINET//Legal-Privilege";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//NATIONAL CABINET//Legal-Privilege";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET - Legal-Privilege";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET - Legal-Privilege'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P NC LP";
            ParentId                           = "P group";
            Priority                           = 17;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET - Legislative-Secrecy-2"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//NATIONAL CABINET//Legislative-Secrecy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//NATIONAL CABINET//Legislative-Secrecy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET - Legislative-Secrecy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET - Legislative-Secrecy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P NC LS";
            ParentId                           = "P group";
            Priority                           = 18;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-NATIONAL CABINET - Personal-Privacy-2"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//NATIONAL CABINET//Personal-Privacy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//NATIONAL CABINET//Personal-Privacy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "NATIONAL CABINET - Personal-Privacy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'NATIONAL CABINET - Personal-Privacy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P NC PP";
            ParentId                           = "P group";
            Priority                           = 19;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-CABINET"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//CABINET";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//CABINET";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "CABINET";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'CABINET'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P C";
            ParentId                           = "P group";
            Priority                           = 20;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-CABINET - Legal-Privilege"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//CABINET//Legal-Privilege";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//CABINET//Legal-Privilege";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "CABINET - Legal-Privilege";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'CABINET - Legal-Privilege'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P C LP";
            ParentId                           = "P group";
            Priority                           = 21;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-CABINET - Legislative-Secrecy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//CABINET//Legislative-Secrecy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//CABINET//Legislative-Secrecy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "CABINET - Legislative-Secrecy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'CABINET - Legislative-Secrecy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P C LS";
            ParentId                           = "P group";
            Priority                           = 22;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
        SCSensitivityLabel "SCSensitivityLabel-CABINET - Personal-Privacy"
        {
            AdvancedSettings                   = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'parentid'
                    Value = '3a94dc29-0602-434a-914f-e3300e52cc65'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'isparent'
                    Value = 'False'
                }
            );
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            ApplyContentMarkingFooterAlignment = "Center";
            ApplyContentMarkingFooterFontColor = "#FF0000";
            ApplyContentMarkingFooterFontSize  = "12";
            ApplyContentMarkingFooterMargin    = "5";
            ApplyContentMarkingFooterText      = "PROTECTED//CABINET//Personal-Privacy";
            ApplyContentMarkingHeaderAlignment = "Center";
            ApplyContentMarkingHeaderFontColor = "#FF0000";
            ApplyContentMarkingHeaderFontSize  = "12";
            ApplyContentMarkingHeaderMargin    = "5";
            ApplyContentMarkingHeaderText      = "PROTECTED//CABINET//Personal-Privacy";
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Comment                            = "";
            ContentType                        = @("File, Email","Site, UnifiedGroup","Teamwork");
            DisplayName                        = "CABINET - Personal-Privacy";
            Ensure                             = "Present";
            LocaleSettings                     = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'CABINET - Personal-Privacy'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    LabelSettings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'High business impact. Damage to the national interest, organisations or individuals.'
                        }
                    )
                }
            );
            Name                               = "P C PP";
            ParentId                           = "P group";
            Priority                           = 23;
            TenantId                           = $OrganizationName;
            Tooltip                            = "High business impact. Damage to the national interest, organisations or individuals.";
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
