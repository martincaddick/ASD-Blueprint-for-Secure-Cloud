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
        IntuneAntivirusPolicyWindows10SettingCatalog "IntuneAntivirusPolicyWindows10SettingCatalog-ASD Windows Hardening Guidelines-Antivirus"
        {
            allowarchivescanning                = "1";
            allowbehaviormonitoring             = "1";
            allowcloudprotection                = "1";
            allowemailscanning                  = "0";
            allowfullscanremovabledrivescanning = "0";
            allowintrusionpreventionsystem      = "1";
            allowioavprotection                 = "1";
            allowonaccessprotection             = "1";
            allowrealtimemonitoring             = "1";
            allowscanningnetworkfiles           = "1";
            allowscriptscanning                 = "1";
            allowuseruiaccess                   = "0";
            ApplicationId                       = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                         = @();
            avgcpuloadfactor                    = 50;
            CertificateThumbprint               = $ConfigurationData.NonNodeData.CertificateThumbprint;
            checkforsignaturesbeforerunningscan = "1";
            cloudblocklevel                     = "0";
            Description                         = "";
            disablecatchupfullscan              = "1";
            disablecatchupquickscan             = "1";
            DisplayName                         = "ASD Windows Hardening Guidelines-Antivirus";
            enablelowcpupriority                = "1";
            enablenetworkprotection             = "1";
            Ensure                              = "Present";
            Identity                            = "87fc521e-0537-40af-8363-754e3cc13cf5";
            lowseveritythreats                  = "clean";
            moderateseveritythreats             = "quarantine";
            puaprotection                       = "1";
            realtimescandirection               = "0";
            schedulequickscantime               = 120;
            schedulescanday                     = "0";
            schedulescantime                    = 120;
            severethreats                       = "block";
            signatureupdateinterval             = 4;
            submitsamplesconsent                = "1";
            templateId                          = "804339ad-1553-4478-a742-138fb5807418_1";
            TenantId                            = $OrganizationName;
        }
        IntuneEndpointDetectionAndResponsePolicyWindows10 "IntuneEndpointDetectionAndResponsePolicyWindows10-ASD Windows Hardening Guidelines-Endpoint Detection and Response"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            DisplayName           = "ASD Windows Hardening Guidelines-Endpoint Detection and Response";
            Ensure                = "Present";
            Identity              = "a13e06b2-3309-4775-810c-5c0b75d52533";
            samplesharing         = "0";
            TenantId              = $OrganizationName;
        }
        IntuneSettingCatalogASRRulesPolicyWindows10 "IntuneSettingCatalogASRRulesPolicyWindows10-ASD Windows Hardening Guidelines-Attack Surface Reduction"
        {
            ApplicationId                                                              = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                                                                = @(
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    groupDisplayName = 'All devices'
                    dataType = '#microsoft.graph.allDevicesAssignmentTarget'
                }
            );
            blockadobereaderfromcreatingchildprocesses                                 = "block";
            blockallofficeapplicationsfromcreatingchildprocesses                       = "block";
            blockcredentialstealingfromwindowslocalsecurityauthoritysubsystem          = "block";
            blockexecutablecontentfromemailclientandwebmail                            = "block";
            blockexecutablefilesrunningunlesstheymeetprevalenceagetrustedlistcriterion = "block";
            blockexecutionofpotentiallyobfuscatedscripts                               = "block";
            blockjavascriptorvbscriptfromlaunchingdownloadedexecutablecontent          = "block";
            blockofficeapplicationsfromcreatingexecutablecontent                       = "block";
            blockofficeapplicationsfrominjectingcodeintootherprocesses                 = "block";
            blockofficecommunicationappfromcreatingchildprocesses                      = "block";
            blockpersistencethroughwmieventsubscription                                = "block";
            blockprocesscreationsfrompsexecandwmicommands                              = "block";
            blockuntrustedunsignedprocessesthatrunfromusb                              = "block";
            blockwin32apicallsfromofficemacros                                         = "block";
            CertificateThumbprint                                                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description                                                                = "";
            DisplayName                                                                = "ASD Windows Hardening Guidelines-Attack Surface Reduction";
            Ensure                                                                     = "Present";
            Identity                                                                   = "f45cde56-9d37-4db4-afdb-822fa323b153";
            TenantId                                                                   = $OrganizationName;
            useadvancedprotectionagainstransomware                                     = "block";
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
