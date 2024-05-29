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
        IntuneDeviceCompliancePolicyiOs "IntuneDeviceCompliancePolicyiOs-Apple ios and Ipad"
        {
            AdvancedThreatProtectionRequiredSecurityLevel = "medium";
            ApplicationId                                 = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                                   = @();
            CertificateThumbprint                         = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DeviceThreatProtectionEnabled                 = $True;
            DeviceThreatProtectionRequiredSecurityLevel   = "medium";
            DisplayName                                   = "Apple ios and Ipad";
            Ensure                                        = "Present";
            ManagedEmailProfileRequired                   = $False;
            OsMinimumBuildVersion                         = "18H107";
            OsMinimumVersion                              = "14.8.1";
            PasscodeBlockSimple                           = $True;
            PasscodeExpirationDays                        = 365;
            PasscodeMinimumCharacterSetCount              = 1;
            PasscodeMinimumLength                         = 14;
            PasscodeMinutesOfInactivityBeforeLock         = 0;
            PasscodePreviousPasscodeBlockCount            = 5;
            PasscodeRequired                              = $True;
            PasscodeRequiredType                          = "alphanumeric";
            RestrictedApps                                = @();
            SecurityBlockJailbrokenDevices                = $True;
            TenantId                                      = $OrganizationName;
        }
        IntuneDeviceCompliancePolicyWindows10 "IntuneDeviceCompliancePolicyWindows10-Windows 10/11 Compliance Policy"
        {
            ActiveFirewallRequired                      = $True;
            AntiSpywareRequired                         = $True;
            AntivirusRequired                           = $True;
            ApplicationId                               = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                                 = @();
            BitLockerEnabled                            = $True;
            CertificateThumbprint                       = $ConfigurationData.NonNodeData.CertificateThumbprint;
            CodeIntegrityEnabled                        = $True;
            ConfigurationManagerComplianceRequired      = $False;
            DefenderEnabled                             = $True;
            DefenderVersion                             = "4.18.0.0";
            DeviceThreatProtectionEnabled               = $True;
            DeviceThreatProtectionRequiredSecurityLevel = "medium";
            DisplayName                                 = "Windows 10/11 Compliance Policy";
            EarlyLaunchAntiMalwareDriverEnabled         = $False;
            Ensure                                      = "Present";
            MobileOsMinimumVersion                      = "10.0.19043.10000";
            OsMinimumVersion                            = "10.0.19043.10000";
            PasswordBlockSimple                         = $True;
            PasswordExpirationDays                      = 365;
            PasswordMinimumCharacterSetCount            = 4;
            PasswordMinimumLength                       = 14;
            PasswordMinutesOfInactivityBeforeLock       = 15;
            PasswordRequired                            = $True;
            PasswordRequiredToUnlockFromIdle            = $True;
            PasswordRequiredType                        = "alphanumeric";
            RequireHealthyDeviceReport                  = $False;
            RTPEnabled                                  = $True;
            SecureBootEnabled                           = $True;
            SignatureOutOfDate                          = $True;
            StorageRequireEncryption                    = $True;
            TenantId                                    = $OrganizationName;
            ValidOperatingSystemBuildRanges             = @();
        }
        IntuneDeviceConfigurationCustomPolicyWindows10 "IntuneDeviceConfigurationCustomPolicyWindows10-ASD Windows Hardening Guidelines-User Rights Assignment"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DisplayName           = "ASD Windows Hardening Guidelines-User Rights Assignment";
            Ensure                = "Present";
            Id                    = "3116b1df-b9b6-4ead-9b24-d3bf3d35379a";
            OmaSettings           = @(
                MSFT_MicrosoftGraphomaSetting{
                    Description = '[]'
                    OmaUri = './Device/Vendor/MSFT/Policy/Config/UserRights/CreatePermanentSharedObjects'
                    Value = ''
                    odataType = '#microsoft.graph.omaSettingString'
                    IsEncrypted = $False
                    DisplayName = 'SeCreatePermanentPrivilege'
                }
                MSFT_MicrosoftGraphomaSetting{
                    Description = '[]'
                    OmaUri = './Device/Vendor/MSFT/Policy/Config/UserRights/CreateToken'
                    Value = ''
                    odataType = '#microsoft.graph.omaSettingString'
                    IsEncrypted = $False
                    DisplayName = 'SeCreateTokenPrivilege'
                }
                MSFT_MicrosoftGraphomaSetting{
                    Description = '[]'
                    OmaUri = './Device/Vendor/MSFT/Policy/Config/UserRights/EnableDelegation'
                    Value = ''
                    odataType = '#microsoft.graph.omaSettingString'
                    IsEncrypted = $False
                    DisplayName = 'SeEnableDelegationPrivilege'
                }
                MSFT_MicrosoftGraphomaSetting{
                    Description = '[]'
                    OmaUri = './Device/Vendor/MSFT/Policy/Config/UserRights/LockMemory'
                    Value = ''
                    odataType = '#microsoft.graph.omaSettingString'
                    IsEncrypted = $False
                    DisplayName = 'SeLockMemoryPrivilege'
                }
                MSFT_MicrosoftGraphomaSetting{
                    Description = '[]'
                    OmaUri = './Device/Vendor/MSFT/Policy/Config/UserRights/AccessCredentialManagerAsTrustedCaller'
                    Value = ''
                    odataType = '#microsoft.graph.omaSettingString'
                    IsEncrypted = $False
                    DisplayName = 'SeTrustedCredManAccessPrivilege'
                }
                MSFT_MicrosoftGraphomaSetting{
                    Description = '[]'
                    OmaUri = './Device/Vendor/MSFT/Policy/Config/UserRights/ActAsPartOfTheOperatingSystem'
                    Value = ''
                    odataType = '#microsoft.graph.omaSettingString'
                    IsEncrypted = $False
                    DisplayName = 'SeTcbPrivilege'
                }
            );
            SupportsScopeTags     = $True;
            TenantId              = $OrganizationName;
        }
        IntuneDeviceConfigurationPolicyiOS "IntuneDeviceConfigurationPolicyiOS-Ios/Ipad"
        {
            AccountBlockModification                       = $True;
            ActivationLockAllowWhenSupervised              = $True;
            AirDropBlocked                                 = $True;
            AirDropForceUnmanagedDropTarget                = $True;
            AirPlayForcePairingPasswordForOutgoingRequests = $True;
            AirPrintBlockCredentialsStorage                = $False;
            AirPrintBlocked                                = $True;
            AirPrintBlockiBeaconDiscovery                  = $False;
            AirPrintForceTrustedTLS                        = $False;
            AppClipsBlocked                                = $True;
            AppleNewsBlocked                               = $False;
            ApplePersonalizedAdsBlocked                    = $True;
            AppleWatchBlockPairing                         = $True;
            AppleWatchForceWristDetection                  = $True;
            ApplicationId                                  = $ConfigurationData.NonNodeData.ApplicationId;
            AppRemovalBlocked                              = $True;
            AppsSingleAppModeList                          = @();
            AppStoreBlockAutomaticDownloads                = $True;
            AppStoreBlocked                                = $True;
            AppStoreBlockInAppPurchases                    = $False;
            AppStoreBlockUIAppInstallation                 = $False;
            AppStoreRequirePassword                        = $False;
            AppsVisibilityList                             = @();
            AppsVisibilityListType                         = "none";
            Assignments                                    = @();
            AutoFillForceAuthentication                    = $False;
            AutoUnlockBlocked                              = $True;
            BlockSystemAppRemoval                          = $True;
            BluetoothBlockModification                     = $True;
            CameraBlocked                                  = $True;
            CellularBlockDataRoaming                       = $False;
            CellularBlockGlobalBackgroundFetchWhileRoaming = $False;
            CellularBlockPerAppDataModification            = $False;
            CellularBlockPersonalHotspot                   = $False;
            CellularBlockPersonalHotspotModification       = $False;
            CellularBlockPlanModification                  = $False;
            CellularBlockVoiceRoaming                      = $False;
            CertificatesBlockUntrustedTlsCertificates      = $True;
            CertificateThumbprint                          = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClassroomAppBlockRemoteScreenObservation       = $True;
            ClassroomAppForceUnpromptedScreenObservation   = $True;
            ClassroomForceAutomaticallyJoinClasses         = $False;
            ClassroomForceRequestPermissionToLeaveClasses  = $False;
            ClassroomForceUnpromptedAppAndDeviceLock       = $False;
            CompliantAppListType                           = "appsInListCompliant";
            CompliantAppsList                              = @(
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Adobe Inc'
                    AppStoreUrl = 'https://apps.apple.com/au/app/adobe-acrobat-reader-for-pdf/id469337564'
                    Name = 'Adobe Acrobat Reader for PDF'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-authenticator/id983156458'
                    Name = 'Microsoft Authenticator'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-edge/id1288723196'
                    Name = 'Microsoft Edge'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-excel/id586683407'
                    Name = 'Microsoft Excel'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-onedrive/id477537958'
                    Name = 'Microsoft OneDrive'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/au/app/microsoft-onenote/id410395246'
                    Name = 'Microsoft OneNote'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/au/app/microsoft-powerpoint/id586449534'
                    Name = 'Microsoft PowerPoint'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-outlook/id951937596'
                    Name = 'Microsoft Outlook'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/au/app/microsoft-sharepoint/id1091505266'
                    Name = 'Microsoft SharePoint'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-teams/id1113153706'
                    Name = 'Microsoft Teams'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/us/app/microsoft-word/id586447913'
                    Name = 'Microsoft Word'
                }
                MSFT_MicrosoftGraphapplistitem{
                    Publisher = 'Microsoft Corporation'
                    AppStoreUrl = 'https://apps.apple.com/au/app/power-apps/id1047318566'
                    Name = 'PowerApps'
                }
            );
            ConfigurationProfileBlockChanges               = $True;
            ContactsAllowManagedToUnmanagedWrite           = $False;
            ContactsAllowUnmanagedToManagedRead            = $True;
            ContinuousPathKeyboardBlocked                  = $False;
            DateAndTimeForceSetAutomatically               = $True;
            DefinitionLookupBlocked                        = $False;
            DeviceBlockEnableRestrictions                  = $True;
            DeviceBlockEraseContentAndSettings             = $True;
            DeviceBlockNameModification                    = $True;
            DiagnosticDataBlockSubmission                  = $True;
            DiagnosticDataBlockSubmissionModification      = $False;
            DisplayName                                    = "Ios/Ipad";
            DocumentsBlockManagedDocumentsInUnmanagedApps  = $True;
            DocumentsBlockUnmanagedDocumentsInManagedApps  = $True;
            EmailInDomainSuffixes                          = @();
            Ensure                                         = "Present";
            EnterpriseAppBlockTrust                        = $True;
            EnterpriseAppBlockTrustModification            = $False;
            EnterpriseBookBlockBackup                      = $True;
            EnterpriseBookBlockMetadataSync                = $True;
            EsimBlockModification                          = $True;
            FaceTimeBlocked                                = $True;
            FilesNetworkDriveAccessBlocked                 = $False;
            FilesUsbDriveAccessBlocked                     = $True;
            FindMyDeviceInFindMyAppBlocked                 = $True;
            FindMyFriendsBlocked                           = $True;
            FindMyFriendsInFindMyAppBlocked                = $True;
            GameCenterBlocked                              = $False;
            GamingBlockGameCenterFriends                   = $False;
            GamingBlockMultiplayer                         = $False;
            HostPairingBlocked                             = $True;
            IBooksStoreBlocked                             = $True;
            IBooksStoreBlockErotica                        = $False;
            ICloudBlockActivityContinuation                = $True;
            ICloudBlockBackup                              = $True;
            ICloudBlockDocumentSync                        = $True;
            ICloudBlockManagedAppsSync                     = $True;
            ICloudBlockPhotoLibrary                        = $True;
            ICloudBlockPhotoStreamSync                     = $True;
            ICloudBlockSharedPhotoStream                   = $True;
            ICloudPrivateRelayBlocked                      = $False;
            ICloudRequireEncryptedBackup                   = $True;
            Id                                             = "b95bc2e9-fba6-4def-9493-333714aa3e26";
            ITunesBlocked                                  = $True;
            ITunesBlockExplicitContent                     = $False;
            ITunesBlockMusicService                        = $True;
            ITunesBlockRadio                               = $True;
            KeyboardBlockAutoCorrect                       = $False;
            KeyboardBlockDictation                         = $False;
            KeyboardBlockPredictive                        = $False;
            KeyboardBlockShortcuts                         = $False;
            KeyboardBlockSpellCheck                        = $False;
            KeychainBlockCloudSync                         = $True;
            KioskModeAllowAssistiveSpeak                   = $False;
            KioskModeAllowAssistiveTouchSettings           = $False;
            KioskModeAllowAutoLock                         = $False;
            KioskModeAllowColorInversionSettings           = $False;
            KioskModeAllowRingerSwitch                     = $False;
            KioskModeAllowScreenRotation                   = $False;
            KioskModeAllowSleepButton                      = $False;
            KioskModeAllowTouchscreen                      = $False;
            KioskModeAllowVoiceControlModification         = $False;
            KioskModeAllowVoiceOverSettings                = $False;
            KioskModeAllowVolumeButtons                    = $False;
            KioskModeAllowZoomSettings                     = $False;
            KioskModeAppType                               = "notConfigured";
            KioskModeBlockAutoLock                         = $False;
            KioskModeBlockRingerSwitch                     = $False;
            KioskModeBlockScreenRotation                   = $False;
            KioskModeBlockSleepButton                      = $False;
            KioskModeBlockTouchscreen                      = $False;
            KioskModeBlockVolumeButtons                    = $False;
            KioskModeEnableVoiceControl                    = $False;
            KioskModeRequireAssistiveTouch                 = $False;
            KioskModeRequireColorInversion                 = $False;
            KioskModeRequireMonoAudio                      = $False;
            KioskModeRequireVoiceOver                      = $False;
            KioskModeRequireZoom                           = $False;
            LockScreenBlockControlCenter                   = $True;
            LockScreenBlockNotificationView                = $True;
            LockScreenBlockPassbook                        = $True;
            LockScreenBlockTodayView                       = $True;
            ManagedPasteboardRequired                      = $True;
            MediaContentRatingApps                         = "allAllowed";
            MessagesBlocked                                = $True;
            NetworkUsageRules                              = @();
            NfcBlocked                                     = $True;
            NotificationsBlockSettingsModification         = $True;
            OnDeviceOnlyDictationForced                    = $True;
            OnDeviceOnlyTranslationForced                  = $True;
            PasscodeBlockFingerprintModification           = $True;
            PasscodeBlockFingerprintUnlock                 = $True;
            PasscodeBlockModification                      = $True;
            PasscodeBlockSimple                            = $True;
            PasscodeExpirationDays                         = 365;
            PasscodeMinimumCharacterSetCount               = 1;
            PasscodeMinimumLength                          = 14;
            PasscodeMinutesOfInactivityBeforeLock          = 0;
            PasscodeMinutesOfInactivityBeforeScreenTimeout = 1;
            PasscodePreviousPasscodeBlockCount             = 5;
            PasscodeRequired                               = $True;
            PasscodeRequiredType                           = "alphanumeric";
            PasscodeSignInFailureCountBeforeWipe           = 11;
            PasswordBlockAirDropSharing                    = $True;
            PasswordBlockAutoFill                          = $True;
            PasswordBlockProximityRequests                 = $True;
            PkiBlockOTAUpdates                             = $True;
            PodcastsBlocked                                = $True;
            PrivacyForceLimitAdTracking                    = $True;
            ProximityBlockSetupToNewDevice                 = $True;
            SafariBlockAutofill                            = $True;
            SafariBlocked                                  = $True;
            SafariBlockJavaScript                          = $True;
            SafariBlockPopups                              = $True;
            SafariCookieSettings                           = "blockAlways";
            SafariManagedDomains                           = @();
            SafariPasswordAutoFillDomains                  = @();
            SafariRequireFraudWarning                      = $True;
            ScreenCaptureBlocked                           = $True;
            SharedDeviceBlockTemporarySessions             = $True;
            SiriBlocked                                    = $True;
            SiriBlockedWhenLocked                          = $False;
            SiriBlockUserGeneratedContent                  = $False;
            SiriRequireProfanityFilter                     = $False;
            SoftwareUpdatesForceDelayed                    = $False;
            SpotlightBlockInternetResults                  = $True;
            TenantId                                       = $OrganizationName;
            UnpairedExternalBootToRecoveryAllowed          = $False;
            UsbRestrictedModeBlocked                       = $False;
            VoiceDialingBlocked                            = $True;
            VpnBlockCreation                               = $True;
            WallpaperBlockModification                     = $True;
            WiFiConnectOnlyToConfiguredNetworks            = $False;
            WiFiConnectToAllowedNetworksOnlyForced         = $False;
            WifiPowerOnForced                              = $False;
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
        IntuneSettingCatalogCustomPolicyWindows10 "IntuneSettingCatalogCustomPolicyWindows10-ASD Edge Hardening Guidelines"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            Ensure                = "Present";
            Id                    = "c28a2b4b-d765-4a67-97b5-6d335480ef00";
            Name                  = "ASD Edge Hardening Guidelines";
            Platforms             = "windows10";
            Settings              = @(
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_defender_enablenetworkprotection_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_defender_enablenetworkprotection'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edgev78diff~policy~microsoft_edge_adssettingforintrusiveadssites_adssettingforintrusiveadssites_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev78diff~policy~microsoft_edge_adssettingforintrusiveadssites_adssettingforintrusiveadssites'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edgev78diff~policy~microsoft_edge_adssettingforintrusiveadssites_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev78diff~policy~microsoft_edge_adssettingforintrusiveadssites'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions_downloadrestrictions_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions_downloadrestrictions'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_configuredonottrack_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_configuredonottrack'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting_defaultpopupssetting_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting_defaultpopupssetting'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode_dnsoverhttpsmode_off'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode_dnsoverhttpsmode'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability_developertoolsavailability_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability_developertoolsavailability'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edgev80diff~policy~microsoft_edge_dnsinterceptionchecksenabled_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev80diff~policy~microsoft_edge_dnsinterceptionchecksenabled'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~passwordmanager_passwordmanagerenabled_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~passwordmanager_passwordmanagerenabled'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverrideforfiles_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverrideforfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
            );
            Technologies          = "mdm";
            TenantId              = $OrganizationName;
        }
        IntuneSettingCatalogCustomPolicyWindows10 "IntuneSettingCatalogCustomPolicyWindows10-ASD Office Hardening - All Macros Disabled"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            Ensure                = "Present";
            Id                    = "16e61c64-d01f-41b9-88cf-240770fcde5c";
            Name                  = "ASD Office Hardening - All Macros Disabled";
            Platforms             = "windows10";
            Settings              = @(
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy_l_empty_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty4_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty4'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity_l_settheautomationsecuritylevel_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity_l_settheautomationsecuritylevel'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disablevbaforofficeapplications319_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disablevbaforofficeapplications319'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings~l_trustcenter241_l_allowmixofpolicyanduserlocations_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings~l_trustcenter241_l_allowmixofpolicyanduserlocations'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_applymacrosecuritysettings_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_applymacrosecuritysettings'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_securityleveloutlook_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_securityleveloutlook'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty3_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty3'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel_l_empty_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy_l_empty0_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy_l_empty0'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_enablemicrosoftvisualbasicforapplicationsproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_enablemicrosoftvisualbasicforapplicationsproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_loadmicrosoftvisualbasicforapplicationsprojectsf_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_loadmicrosoftvisualbasicforapplicationsprojectsf'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty19_4'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty19'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
            );
            Technologies          = "mdm";
            TenantId              = $OrganizationName;
        }
        IntuneSettingCatalogCustomPolicyWindows10 "IntuneSettingCatalogCustomPolicyWindows10-ASD Office Hardening - Macros Enabled for Trusted Publishers"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            Ensure                = "Present";
            Id                    = "a13eb7d0-bd6a-4329-9466-13aac7fd0712";
            Name                  = "ASD Office Hardening - Macros Enabled for Trusted Publishers";
            Platforms             = "windows10";
            Settings              = @(
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_mmc_mmc_restrict_to_permitted_snapins_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_mmc_mmc_restrict_to_permitted_snapins'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy_l_empty_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems85_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems85_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems85'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems165_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems165_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems165'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_determinewhethertoforceencryptedexcel_l_determinewhethertoforceencryptedexceldropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_determinewhethertoforceencryptedexcel_l_determinewhethertoforceencryptedexceldropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_determinewhethertoforceencryptedexcel_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_determinewhethertoforceencryptedexcel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty4_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty4'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity_l_settheautomationsecuritylevel_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity_l_settheautomationsecuritylevel'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_automationsecurity'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disablealltrustbarnotificationsfor_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disablealltrustbarnotificationsfor'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disablevbaforofficeapplications319_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disablevbaforofficeapplications319'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope_l_macroruntimescanscopeenum_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope_l_macroruntimescanscopeenum'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings~l_trustcenter241_l_allowmixofpolicyanduserlocations_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings~l_trustcenter241_l_allowmixofpolicyanduserlocations'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_disableitemsinuserinterface~l_custom_l_disablecommandbar38_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_disableitemsinuserinterface~l_custom_l_disablecommandbar38_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_disableitemsinuserinterface~l_custom_l_disablecommandbar38'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_applymacrosecuritysettings_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_applymacrosecuritysettings'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_securityleveloutlook_l_securitylevel_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_securityleveloutlook_l_securitylevel'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_securityleveloutlook_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_outlk16v2~policy~l_microsoftofficeoutlook~l_security~l_trustcenter_l_securityleveloutlook'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems157_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems157_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems157'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_determinewhethertoforceencryptedppt_l_determinewhethertoforceencryptedpptdropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_determinewhethertoforceencryptedppt_l_determinewhethertoforceencryptedpptdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_determinewhethertoforceencryptedppt_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_determinewhethertoforceencryptedppt'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty3_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty3'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems2_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems2_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel_l_empty_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security_l_publisherautomationsecuritylevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy_l_empty0_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy_l_empty0'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_pub16v2~policy~l_microsoftofficepublisher~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems1_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems1_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems1'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_enablemicrosoftvisualbasicforapplicationsproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_enablemicrosoftvisualbasicforapplicationsproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_loadmicrosoftvisualbasicforapplicationsprojectsf_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_macrosecurity_l_loadmicrosoftvisualbasicforapplicationsprojectsf'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems174_l_enteracommandbaridtodisable'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '19092'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems174_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_disableitemsinuserinterface~l_custom_l_disablecommandbarbuttonsandmenuitems174'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_determinewhethertoforceencryptedword_l_determinewhethertoforceencryptedworddropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_determinewhethertoforceencryptedword_l_determinewhethertoforceencryptedworddropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_determinewhethertoforceencryptedword_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_determinewhethertoforceencryptedword'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_trustaccesstovisualbasicproject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_allowtrustedlocationsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_trustedlocations_l_disabletrustedloc'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty19_3'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy_l_empty19'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_vbawarningspolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
            );
            Technologies          = "mdm";
            TenantId              = $OrganizationName;
        }
        IntuneSettingCatalogCustomPolicyWindows10 "IntuneSettingCatalogCustomPolicyWindows10-ASD Office Hardening Guidelines"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "";
            Ensure                = "Present";
            Id                    = "aa8f120f-e10f-43a3-a3f8-1246e1327db6";
            Name                  = "ASD Office Hardening Guidelines";
            Platforms             = "windows10";
            Settings              = @(
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_access16v2~policy~l_microsoftofficeaccess~l_applicationsettings~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_forcefileextenstionstomatch_l_empty_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_forcefileextenstionstomatch_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_forcefileextenstionstomatch_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_forcefileextenstionstomatch'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_externalcontent_l_enableblockunsecurequeryfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_externalcontent_l_enableblockunsecurequeryfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_externalcontent_l_disableddeserverlaunch_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_externalcontent_l_disableddeserverlaunch'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_externalcontent_l_disableddeserverlookup_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_externalcontent_l_disableddeserverlookup'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_dbaseiiiandivfiles_l_dbaseiiiandivfilesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_dbaseiiiandivfiles_l_dbaseiiiandivfilesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_dbaseiiiandivfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_dbaseiiiandivfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_difandsylkfiles_l_difandsylkfilesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_difandsylkfiles_l_difandsylkfilesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_difandsylkfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_difandsylkfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2macrosheetsandaddinfiles_l_excel2macrosheetsandaddinfilesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2macrosheetsandaddinfiles_l_excel2macrosheetsandaddinfilesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2macrosheetsandaddinfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2macrosheetsandaddinfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2worksheets_l_excel2worksheetsdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2worksheets_l_excel2worksheetsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2worksheets_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel2worksheets'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3macrosheetsandaddinfiles_l_excel3macrosheetsandaddinfilesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3macrosheetsandaddinfiles_l_excel3macrosheetsandaddinfilesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3macrosheetsandaddinfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3macrosheetsandaddinfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3worksheets_l_excel3worksheetsdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3worksheets_l_excel3worksheetsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3worksheets_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel3worksheets'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4macrosheetsandaddinfiles_l_excel4macrosheetsandaddinfilesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4macrosheetsandaddinfiles_l_excel4macrosheetsandaddinfilesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4macrosheetsandaddinfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4macrosheetsandaddinfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4workbooks_l_excel4workbooksdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4workbooks_l_excel4workbooksdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4workbooks_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4workbooks'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4worksheets_l_excel4worksheetsdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4worksheets_l_excel4worksheetsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4worksheets_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel4worksheets'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel95workbooks_l_excel95workbooksdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel95workbooks_l_excel95workbooksdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel95workbooks_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel95workbooks'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel9597workbooksandtemplates_l_excel9597workbooksandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel9597workbooksandtemplates_l_excel9597workbooksandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel9597workbooksandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel9597workbooksandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel972003workbooksandtemplates_l_excel972003workbooksandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel972003workbooksandtemplates_l_excel972003workbooksandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel972003workbooksandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_excel972003workbooksandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_l_setdefaultfileblockbehaviordropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_l_setdefaultfileblockbehaviordropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_webpagesandexcel2003xmlspreadsheets_l_webpagesandexcel2003xmlspreadsheetsdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_webpagesandexcel2003xmlspreadsheets_l_webpagesandexcel2003xmlspreadsheetsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_webpagesandexcel2003xmlspreadsheets_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_fileblocksettings_l_webpagesandexcel2003xmlspreadsheets'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_enabledatabasefileprotectedview_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v3~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_enabledatabasefileprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesfromtheinternetzoneinprotectedview_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesfromtheinternetzoneinprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesinunsafelocationsinprotectedview_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesinunsafelocationsinprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsdropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsstr3_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsstr3'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_turnoffprotectedviewforattachmentsopenedfromoutlook_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter~l_protectedview_l_turnoffprotectedviewforattachmentsopenedfromoutlook'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_turnofffilevalidation_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_excel16v2~policy~l_microsoftofficeexcel~l_exceloptions~l_security_l_turnofffilevalidation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_allowedextensions_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_allowedextensions'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disableallactivex_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_disableallactivex'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v3~policy~l_microsoftofficesystem~l_securitysettings_l_forceruntimeavscan_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v3~policy~l_microsoftofficesystem~l_securitysettings_l_forceruntimeavscan'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope_l_macroruntimescanscopeenum_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope_l_macroruntimescanscopeenum'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_securitysettings_l_macroruntimescanscope'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_screenshot_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_screenshot'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_updatereliabilitypolicy_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_updatereliabilitypolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendtelemetry_l_sendtelemetrydropid_1'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendtelemetry_l_sendtelemetrydropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendtelemetry_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendtelemetry'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_disableoptinwizard_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_disableoptinwizard'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_enablecustomerexperienceimprovementprogram_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_enablecustomerexperienceimprovementprogram'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendfeedback_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendfeedback'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendcustomerdata_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_office16v2~policy~l_microsoftofficesystem~l_privacy~l_trustcenter_l_sendcustomerdata'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_makehiddenmarkupvisible_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_makehiddenmarkupvisible'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_runprograms_l_empty_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_runprograms_l_empty'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_runprograms_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_runprograms'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_ppt~l_options~l_security~l_trustcenter~l_fileblocksettings_l_ppt2007andlaterpresentationsshowstemplatesthemesandaddinfiles_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_ppt~l_options~l_security~l_trustcenter~l_fileblocksettings_l_ppt2007andlaterpresentationsshowstemplatesthemesandaddinfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_l_setdefaultfileblockbehaviordropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_l_setdefaultfileblockbehaviordropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesfromtheinternetzoneinprotectedview_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesfromtheinternetzoneinprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesinunsafelocationsinprotectedview_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesinunsafelocationsinprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsdropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsstr3_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsstr3'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_turnoffprotectedviewforattachmentsopenedfromoutlook_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter~l_protectedview_l_turnoffprotectedviewforattachmentsopenedfromoutlook'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_turnofffilevalidation_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_ppt16v2~policy~l_microsoftofficepowerpoint~l_powerpointoptions~l_security_l_turnofffilevalidation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_proj16v2~policy~l_proj~l_projectoptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2000files_l_visio2000filesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2000files_l_visio2000filesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2000files_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2000files'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2003files_l_visio2003filesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2003files_l_visio2003filesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2003files_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio2003files'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio50andearlierfiles_l_visio50andearlierfilesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio50andearlierfiles_l_visio50andearlierfilesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio50andearlierfiles_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_visio16v2~policy~l_microsoftvisio~l_visiooptions~l_security~l_trustcenter~l_fileblocksettings_l_visio50andearlierfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_advanced_l_updateautomaticlinksatopen_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_advanced_l_updateautomaticlinksatopen'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security_l_makehiddenmarkupvisible_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security_l_makehiddenmarkupvisible'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_blockmacroexecutionfrominternet'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_disabletrustbarnotificationforunsigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_l_setdefaultfileblockbehaviordropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_l_setdefaultfileblockbehaviordropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_setdefaultfileblockbehavior'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2andearlierbinarydocumentsandtemplates_l_word2andearlierbinarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2andearlierbinarydocumentsandtemplates_l_word2andearlierbinarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2andearlierbinarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2andearlierbinarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2000binarydocumentsandtemplates_l_word2000binarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2000binarydocumentsandtemplates_l_word2000binarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2000binarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2000binarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2003binarydocumentsandtemplates_l_word2003binarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2003binarydocumentsandtemplates_l_word2003binarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2003binarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2003binarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2007andlaterbinarydocumentsandtemplates_l_word2007andlaterbinarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2007andlaterbinarydocumentsandtemplates_l_word2007andlaterbinarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2007andlaterbinarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word2007andlaterbinarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word6pt0binarydocumentsandtemplates_l_word6pt0binarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word6pt0binarydocumentsandtemplates_l_word6pt0binarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word6pt0binarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word6pt0binarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word95binarydocumentsandtemplates_l_word95binarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word95binarydocumentsandtemplates_l_word95binarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word95binarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word95binarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word97binarydocumentsandtemplates_l_word97binarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word97binarydocumentsandtemplates_l_word97binarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word97binarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_word97binarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_wordxpbinarydocumentsandtemplates_l_wordxpbinarydocumentsandtemplatesdropid_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_wordxpbinarydocumentsandtemplates_l_wordxpbinarydocumentsandtemplatesdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_wordxpbinarydocumentsandtemplates_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_fileblocksettings_l_wordxpbinarydocumentsandtemplates'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesfromtheinternetzoneinprotectedview_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesfromtheinternetzoneinprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesinunsafelocationsinprotectedview_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_donotopenfilesinunsafelocationsinprotectedview'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsdropid_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsdropid'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsstr3_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_l_setdocumentbehavioriffilevalidationfailsstr3'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_setdocumentbehavioriffilevalidationfails'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_turnoffprotectedviewforattachmentsopenedfromoutlook_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter~l_protectedview_l_turnoffprotectedviewforattachmentsopenedfromoutlook'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_requirethatapplicationextensionsaresigned'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocuments_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocuments'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security~l_trustcenter_l_turnofftrusteddocumentsonthenetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security_l_turnofffilevalidation_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_word16v2~policy~l_microsoftofficeword~l_wordoptions~l_security_l_turnofffilevalidation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
            );
            Technologies          = "mdm";
            TenantId              = $OrganizationName;
        }
        IntuneSettingCatalogCustomPolicyWindows10 "IntuneSettingCatalogCustomPolicyWindows10-ASD Windows Hardening Guidelines"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments           = @();
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "All currently available settings recommended within the ASD Windows Hardening Guidelines for Windows 10/11.";
            Ensure                = "Present";
            Id                    = "c8680a92-13b8-4672-a180-65f1a0b44a2a";
            Name                  = "ASD Windows Hardening Guidelines";
            Platforms             = "windows10";
            Settings              = @(
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_enablescreensaver_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_enablescreensaver'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_screensaverissecure_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_screensaverissecure'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_devicelock_preventenablinglockscreencamera_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_devicelock_preventenablinglockscreencamera'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_devicelock_preventlockscreenslideshow_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_devicelock_preventlockscreenslideshow'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_screensavertimeout_screensavertimeoutfreqspin'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 900
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_screensavertimeout_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_controlpaneldisplay_cpl_personalization_screensavertimeout'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_mssecurityguide_applyuacrestrictionstolocalaccountsonnetworklogon_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_mssecurityguide_applyuacrestrictionstolocalaccountsonnetworklogon'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_pol_secguide_smb1clientdriver_4'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_pol_secguide_smb1clientdriver'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_mssecurityguide_configuresmbv1server_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_mssecurityguide_configuresmbv1server'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_mssecurityguide_enablestructuredexceptionhandlingoverwriteprotection_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_mssecurityguide_enablestructuredexceptionhandlingoverwriteprotection'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_disableipsourceroutingipv6_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_disableipsourceroutingipv6'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_disableipsourcerouting_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_disableipsourcerouting'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_msslegacy_allowicmpredirectstooverrideospfgeneratedroutes_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_msslegacy_allowicmpredirectstooverrideospfgeneratedroutes'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_msslegacy_allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_msslegacy_allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_dnsclient_turn_off_multicast_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_dnsclient_turn_off_multicast'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_connectivity_prohibitinstallationandconfigurationofnetworkbridge_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_prohibitinstallationandconfigurationofnetworkbridge'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_networkconnections_nc_showsharedaccessui_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_networkconnections_nc_showsharedaccessui'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_networkconnections_nc_forcetunneling_stateselect_enabled'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_networkconnections_nc_forcetunneling_stateselect'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_networkconnections_nc_forcetunneling_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_networkconnections_nc_forcetunneling'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    groupSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationGroupSettingValue{

                                            Children = @(
                                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                                    SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_key'

                                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                                        odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                                        StringValue = '\\*\SYSVOL'
                                                    }
                                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                                }

                                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                                    SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_value'

                                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                                        odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                                        StringValue = 'RequireMutualAuthentication=1,RequireIntegrity=1'
                                                    }
                                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                                }
                                            )

                                        }

                                        MSFT_MicrosoftGraphDeviceManagementConfigurationGroupSettingValue{

                                            Children = @(
                                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                                    SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_key'

                                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                                        odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                                        StringValue = '\\*\NETLOGON'
                                                    }
                                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                                }

                                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                                    SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_value'

                                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                                        odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                                        StringValue = 'RequireMutualAuthentication=1,RequireIntegrity=1'
                                                    }
                                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                                }
                                            )

                                        }
                                    )
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_connectivity_hardeneduncpaths'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowsconnectionmanager_prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowsconnectionmanager_prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_wpn_nolockscreentoastnotification_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_wpn_nolockscreentoastnotification'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_auditsettings_includecmdline_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_auditsettings_includecmdline'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_credentialsdelegation_remotehostallowsdelegationofnonexportablecredentials_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_credentialsdelegation_remotehostallowsdelegationofnonexportablecredentials'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdeviceids_deviceinstall_ids_deny_retroactive_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdeviceids_deviceinstall_ids_deny_retroactive'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdeviceids_deviceinstall_ids_deny_list'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = 'PCI\CC_0C0010'
                                        }

                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = 'PCI\CC_0C0A'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdeviceids_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdeviceids'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_retroactive_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_retroactive'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_list'

                                    simpleSettingCollectionValue = @(
                                        MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                            StringValue = '{d48179be-ec20-11d1-b6b8-00c04fa372a7}'
                                        }
                                    )
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_system_bootstartdriverinitialization_selectdriverloadpolicy_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_system_bootstartdriverinitialization_selectdriverloadpolicy'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_system_bootstartdriverinitialization_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_system_bootstartdriverinitialization'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nobackground10_0'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nobackground10'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nochanges10_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nochanges10'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_registry'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_security_cse_nobackground11_0'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_security_cse_nobackground11'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_security_cse_nochanges11_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_security_cse_nochanges11'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_security_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_cse_security'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_grouppolicy_disablebackgroundpolicy_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_disablebackgroundpolicy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_grouppolicy_disablelgpoprocessing_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_disablelgpoprocessing'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_grouppolicy_rsoplogging_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_grouppolicy_rsoplogging'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_icm_shellnousestoreopenwith_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_icm_shellnousestoreopenwith_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_credentialproviders_allowdomaindelaylock_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_credentialproviders_allowdomaindelaylock'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowslogon_dontdisplaynetworkselectionui_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowslogon_dontdisplaynetworkselectionui'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_logon_disableexplorerrunlegacy_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_logon_disableexplorerrunlegacy_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_logon_disableexplorerrunoncelegacy_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_logon_disableexplorerrunoncelegacy_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowslogon_enumeratelocalusersondomainjoinedcomputers_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowslogon_enumeratelocalusersondomainjoinedcomputers'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_logon_run_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_logon_run_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowslogon_disablelockscreenappnotifications_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowslogon_disablelockscreenappnotifications'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_credentialproviders_blockpicturepassword_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_credentialproviders_blockpicturepassword'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_credentialproviders_allowpinlogon_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_credentialproviders_allowpinlogon'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_power_allowstandbystateswhensleepingonbattery_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_allowstandbystateswhensleepingonbattery'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_power_allowstandbywhensleepingpluggedin_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_allowstandbywhensleepingpluggedin'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_power_requirepasswordwhencomputerwakesonbattery_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_requirepasswordwhencomputerwakesonbattery'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_power_requirepasswordwhencomputerwakespluggedin_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_requirepasswordwhencomputerwakespluggedin'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_power_hibernatetimeoutonbattery_enterdchibernatetimeout'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 0
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_power_hibernatetimeoutonbattery_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_hibernatetimeoutonbattery'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_power_hibernatetimeoutpluggedin_enterachibernatetimeout'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 0
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_power_hibernatetimeoutpluggedin_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_hibernatetimeoutpluggedin'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_power_standbytimeoutonbattery_enterdcstandbytimeout'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 0
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_power_standbytimeoutonbattery_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_standbytimeoutonbattery'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_power_standbytimeoutpluggedin_enteracstandbytimeout'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 0
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_power_standbytimeoutpluggedin_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_standbytimeoutpluggedin'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disableregedit_disableregeditmode_2'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disableregedit_disableregeditmode'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disableregedit_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disableregedit'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disablecmd_disablecmdscripts_1'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disablecmd_disablecmdscripts'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disablecmd_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_shellcommandpromptregedittools_disablecmd'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remoteassistance_unsolicitedremoteassistance_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remoteassistance_unsolicitedremoteassistance'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remoteassistance_solicitedremoteassistance_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remoteassistance_solicitedremoteassistance'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_rpcrestrictremoteclientslist_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_rpcrestrictremoteclientslist'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_removablestorageclasses_denyall_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_removablestorageclasses_denyall_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_cdanddvd_denyexecute_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_cdanddvd_denyexecute_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_cdanddvd_denyread_access_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_cdanddvd_denyread_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_cdanddvd_denywrite_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_cdanddvd_denywrite_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_customclasses_denyread_access_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_customclasses_denyread_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_floppydrives_denyexecute_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_floppydrives_denyexecute_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_floppydrives_denyread_access_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_floppydrives_denyread_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_floppydrives_denywrite_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_floppydrives_denywrite_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_removabledisks_denyexecute_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_removabledisks_denyexecute_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_removabledisks_denyread_access_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_removabledisks_denyread_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_tapedrives_denyexecute_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_tapedrives_denyexecute_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_tapedrives_denyread_access_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_tapedrives_denyread_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_tapedrives_denywrite_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_tapedrives_denywrite_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_wpddevices_denyread_access_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_wpddevices_denyread_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_removablestorage_wpddevices_denywrite_access_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_removablestorage_wpddevices_denywrite_access_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_msdt_msdtsupportprovider_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_msdt_msdtsupportprovider'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_appcompat_appcompatturnoffprograminventory_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_appcompat_appcompatturnoffprograminventory'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_appcompat_appcompatturnoffuseractionrecord_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_appcompat_appcompatturnoffuseractionrecord'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_attachmentmanager_donotpreservezoneinformation_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_attachmentmanager_donotpreservezoneinformation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_attachmentmanager_hidezoneinfomechanism_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_attachmentmanager_hidezoneinfomechanism'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_autoplay_disallowautoplayfornonvolumedevices_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_autoplay_disallowautoplayfornonvolumedevices'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_noautorun_dropdown_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_noautorun_dropdown'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_autoplay_turnoffautoplay_autorun_box_255'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_autoplay_turnoffautoplay_autorun_box'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_autoplay_turnoffautoplay_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_autoplay_turnoffautoplay'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_credentialsui_disablepasswordreveal_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_credentialsui_disablepasswordreveal'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_credentialsui_enumerateadministrators_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_credentialsui_enumerateadministrators'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_credui_nolocalpasswordresetquestions_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_credui_nolocalpasswordresetquestions'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_credui_enablesecurecredentialprompting_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_credui_enablesecurecredentialprompting'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog_channel_logmaxsize'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 65536
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog_channel_logmaxsize'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 2097152
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog_channel_logmaxsize'

                                    simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                        odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                                        IntValue = 65536
                                    }
                                    odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_enablesmartscreendropdown_block'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_enablesmartscreendropdown'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_windowsexplorer_nocdburning_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_windowsexplorer_nocdburning'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_windowsexplorer_nosecuritytab_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_windowsexplorer_nosecuritytab'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_windowsexplorer_showhibernateoption_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_windowsexplorer_showhibernateoption'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_windowsexplorer_showsleepoption_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_windowsexplorer_showsleepoption'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_fileexplorer_turnoffdataexecutionpreventionforexplorer_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_fileexplorer_turnoffdataexecutionpreventionforexplorer'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_fileexplorer_turnoffheapterminationoncorruption_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_fileexplorer_turnoffheapterminationoncorruption'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_windowsexplorer_shellprotocolprotectedmodetitle_2_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_windowsexplorer_shellprotocolprotectedmodetitle_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_sharing_disablehomegroup_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_sharing_disablehomegroup'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_sensors_disablelocationscripting_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_sensors_disablelocationscripting_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_locationprovideradm_disablewindowslocationprovider_1_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_locationprovideradm_disablewindowslocationprovider_1'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_msapolicy_microsoftaccount_disableuserauth_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_msapolicy_microsoftaccount_disableuserauth'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_spynet_localsettingoverridespynetreporting_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_spynet_localsettingoverridespynetreporting'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableblockatfirstseen_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableblockatfirstseen'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_spynetreporting_spynetreporting_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_spynetreporting_spynetreporting'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_spynetreporting_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_spynetreporting'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_quarantine_purgeitemsafterdelay_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_quarantine_purgeitemsafterdelay'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disableioavprotection_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disableioavprotection'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disablerealtimemonitoring_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disablerealtimemonitoring'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablebehaviormonitoring_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablebehaviormonitoring'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablescanonrealtimeenable_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablescanonrealtimeenable'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_allowpause_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_allowpause'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablearchivescanning_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablearchivescanning'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablepackedexescanning_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablepackedexescanning'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disableremovabledrivescanning_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disableremovabledrivescanning'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disableemailscanning_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disableemailscanning'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disableheuristics_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disableheuristics'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableantispywaredefender_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableantispywaredefender'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_admx_sharing_noinplacesharing_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_admx_sharing_noinplacesharing'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_server_auth_ts_server_auth_level_1'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_server_auth_ts_server_auth_level'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_server_auth_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_server_auth'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotedesktopservices_donotallowpasswordsaving_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_donotallowpasswordsaving'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotedesktopservices_allowuserstoconnectremotely_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_allowuserstoconnectremotely'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_forcible_logoff_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_forcible_logoff'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_client_clipboard_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_client_clipboard'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_tscc_permissions_policy_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_tscc_permissions_policy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_security_layer_policy_ts_security_layer_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_security_layer_policy_ts_security_layer'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_security_layer_policy_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_security_layer_policy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_terminalserver_ts_user_authentication_policy_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_terminalserver_ts_user_authentication_policy'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level_3'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_internetexplorer_disableenclosuredownloading_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_internetexplorer_disableenclosuredownloading'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_soundrec_soundrec_diableapplication_titletext_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_soundrec_soundrec_diableapplication_titletext_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_windowsstore_removewindowsstore_2_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_windowsstore_removewindowsstore_2'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_admx_winlogon_softwaresasgeneration_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_winlogon_softwaresasgeneration'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_enablescriptblockinvocationlogging_0'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_enablescriptblockinvocationlogging'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_admx_powershellexecutionpolicy_enablescripts_executionpolicy_allsigned'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_admx_powershellexecutionpolicy_enablescripts_executionpolicy'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_admx_powershellexecutionpolicy_enablescripts_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_admx_powershellexecutionpolicy_enablescripts'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_client_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_client'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_client_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_client'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotemanagement_disallowdigestauthentication_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotemanagement_disallowdigestauthentication'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_service_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_service'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_service_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_service'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remotemanagement_disallowstoringofrunascredentials_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remotemanagement_disallowstoringofrunascredentials'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_remoteshell_allowremoteshellaccess_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_remoteshell_allowremoteshellaccess'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditaccountlockout_2'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditaccountlockout'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditgroupmembership_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditgroupmembership'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogoff_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogoff'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogon_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogon'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountmanagement_auditcomputeraccountmanagement_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountmanagement_auditcomputeraccountmanagement'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountmanagement_auditotheraccountmanagementevents_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountmanagement_auditotheraccountmanagementevents'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_policychange_auditpolicychange_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_policychange_auditpolicychange'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_objectaccess_auditfileshare_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_objectaccess_auditfileshare'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditotherlogonlogoffevents_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditotherlogonlogoffevents'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountmanagement_auditsecuritygroupmanagement_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountmanagement_auditsecuritygroupmanagement'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditspeciallogon_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountlogonlogoff_auditspeciallogon'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_accountmanagement_audituseraccountmanagement_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_accountmanagement_audituseraccountmanagement'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_detailedtracking_auditprocesscreation_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_detailedtracking_auditprocesscreation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_detailedtracking_auditprocesstermination_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_detailedtracking_auditprocesstermination'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_objectaccess_auditfilesystem_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_objectaccess_auditfilesystem'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_objectaccess_auditkernelobject_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_objectaccess_auditkernelobject'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_objectaccess_auditotherobjectaccessevents_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_objectaccess_auditotherobjectaccessevents'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_objectaccess_auditregistry_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_objectaccess_auditregistry'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_policychange_auditotherpolicychangeevents_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_policychange_auditotherpolicychangeevents'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_audit_system_auditsystemintegrity_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_audit_system_auditsystemintegrity'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_allowdevelopertools_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_allowdevelopertools'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_allowdonottrack_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_allowdonottrack'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_allowflash_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_allowflash'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_allowpasswordmanager_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_allowpasswordmanager'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_allowpopups_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_allowpopups'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_allowsmartscreen_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_allowsmartscreen'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_preventaccesstoaboutflagsinmicrosoftedge_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_preventaccesstoaboutflagsinmicrosoftedge'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_preventsmartscreenpromptoverride_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_preventsmartscreenpromptoverride'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_browser_preventsmartscreenpromptoverrideforfiles_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_browser_preventsmartscreenpromptoverrideforfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_defender_cloudblocklevel_2'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_defender_cloudblocklevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_defender_cloudextendedtimeout'

                        simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                            odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                            IntValue = 50
                        }
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_defender_enablenetworkprotection_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_defender_enablenetworkprotection'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_defender_submitsamplesconsent_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_defender_submitsamplesconsent'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_deviceguard_configuresystemguardlaunch_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_deviceguard_configuresystemguardlaunch'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_deviceguard_requireplatformsecurityfeatures_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_deviceguard_requireplatformsecurityfeatures'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_experience_allowcortana_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_experience_allowcortana'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'user_vendor_msft_policy_config_experience_allowthirdpartysuggestionsinwindowsspotlight_0'
                                    }
                                    SettingDefinitionId = 'user_vendor_msft_policy_config_experience_allowthirdpartysuggestionsinwindowsspotlight'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }

                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_experience_allowwindowsconsumerfeatures_0'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_experience_allowwindowsconsumerfeatures'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'user_vendor_msft_policy_config_experience_allowwindowsspotlight_1'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_experience_allowwindowsspotlight'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_experience_showlockonusertile_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_experience_showlockonusertile'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_lanmanworkstation_enableinsecureguestlogons_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_lanmanworkstation_enableinsecureguestlogons'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_blockmicrosoftaccounts_3'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_blockmicrosoftaccounts'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_enableadministratoraccountstatus_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_enableadministratoraccountstatus'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_enableguestaccountstatus_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_enableguestaccountstatus'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_devices_preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_devices_preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_donotrequirectrlaltdel_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_donotrequirectrlaltdel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_machineinactivitylimit_v2'

                        simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                            odataType = '#microsoft.graph.deviceManagementConfigurationIntegerSettingValue'
                            IntValue = 900
                        }
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsalways_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsalways'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsifserveragrees_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsifserveragrees'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsalways_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsalways'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsifclientagrees_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsifclientagrees'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccounts_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccounts'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccountsandshares_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccountsandshares'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictanonymousaccesstonamedpipesandshares_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictanonymousaccesstonamedpipesandshares'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictclientsallowedtomakeremotecallstosam'

                        simpleSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                            odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                            StringValue = 'O:BAG:BAD:(A;;RC;;;BA)'
                        }
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_allowlocalsystemtousecomputeridentityforntlm_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_allowlocalsystemtousecomputeridentityforntlm'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_allowpku2uauthenticationrequests_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_allowpku2uauthenticationrequests'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_lanmanagerauthenticationlevel_5'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_lanmanagerauthenticationlevel'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedclients_537395200'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedclients'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedservers_537395200'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedservers'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_allowuiaccessapplicationstopromptforelevation_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_allowuiaccessapplicationstopromptforelevation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforadministrators_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforadministrators'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforstandardusers_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforstandardusers'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_detectapplicationinstallationsandpromptforelevation_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_detectapplicationinstallationsandpromptforelevation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_runalladministratorsinadminapprovalmode_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_runalladministratorsinadminapprovalmode'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_switchtothesecuredesktopwhenpromptingforelevation_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_switchtothesecuredesktopwhenpromptingforelevation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_useadminapprovalmode_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_useadminapprovalmode'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_applicationmanagement_allowgamedvr_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_applicationmanagement_allowgamedvr'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_applicationmanagement_msiallowusercontroloverinstall_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_applicationmanagement_msiallowusercontroloverinstall'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'user_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges_0'
                        }
                        SettingDefinitionId = 'user_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions_downloadrestrictions_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions_downloadrestrictions'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_downloadrestrictions'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_configuredonottrack_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_configuredonottrack'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting_defaultpopupssetting_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting_defaultpopupssetting'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpopupssetting'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode_dnsoverhttpsmode_off'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode_dnsoverhttpsmode'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev83diff~policy~microsoft_edge_dnsoverhttpsmode'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Children = @(
                                MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                                    choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                                        Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability_developertoolsavailability_2'
                                    }
                                    SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability_developertoolsavailability'
                                    odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                                }
                            )
                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_developertoolsavailability'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edgev80diff~policy~microsoft_edge_dnsinterceptionchecksenabled_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edgev80diff~policy~microsoft_edge_dnsinterceptionchecksenabled'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~passwordmanager_passwordmanagerenabled_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~passwordmanager_passwordmanagerenabled'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverrideforfiles_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverrideforfiles'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_power_turnoffhybridsleeponbattery_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_turnoffhybridsleeponbattery'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_power_turnoffhybridsleeppluggedin_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_power_turnoffhybridsleeppluggedin'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_search_allowindexingencryptedstoresoritems_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_search_allowindexingencryptedstoresoritems'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_search_donotusewebresults_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_search_donotusewebresults'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_smartscreen_preventoverrideforfilesinshell_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_smartscreen_preventoverrideforfilesinshell'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_storage_removablediskdenywriteaccess_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_storage_removablediskdenywriteaccess'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_system_allowlocation_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_system_allowlocation'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_system_allowtelemetry_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_system_allowtelemetry'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_system_disableonedrivefilesync_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_system_disableonedrivefilesync'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_accessfromnetwork'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Remote Desktop Users'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_allowlocallogon'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Users'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_backupfilesanddirectories'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_createglobalobjects'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\SERVICE'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\NETWORK SERVICE'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\LOCAL SERVICE'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_createpagefile'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_debugprograms'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_denyaccessfromnetwork'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\Local account'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_denyremotedesktopserviceslogon'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\Local account'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_impersonateclient'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\SERVICE'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\NETWORK SERVICE'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'NT AUTHORITY\LOCAL SERVICE'
                            }

                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_loadunloaddevicedrivers'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_manageauditingandsecuritylog'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_managevolume'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_modifyfirmwareenvironment'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_profilesingleprocess'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_remoteshutdown'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_restorefilesanddirectories'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{
                        SettingDefinitionId = 'device_vendor_msft_policy_config_userrights_takeownership'

                        simpleSettingCollectionValue = @(
                            MSFT_MicrosoftGraphDeviceManagementConfigurationSimpleSettingValue{
                                odataType = '#microsoft.graph.deviceManagementConfigurationStringSettingValue'
                                StringValue = 'BUILTIN\Administrators'
                            }
                        )
                        odataType = '#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_wifi_allowautoconnecttowifisensehotspots_0'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_wifi_allowautoconnecttowifisensehotspots'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowsdefendersecuritycenter_disallowexploitprotectionoverride_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowsdefendersecuritycenter_disallowexploitprotectionoverride'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
                MSFT_MicrosoftGraphdeviceManagementConfigurationSetting{

                    SettingInstance = MSFT_MicrosoftGraphDeviceManagementConfigurationSettingInstance{

                        choiceSettingValue = MSFT_MicrosoftGraphDeviceManagementConfigurationChoiceSettingValue{

                            Value = 'device_vendor_msft_policy_config_windowsinkworkspace_allowwindowsinkworkspace_1'
                        }
                        SettingDefinitionId = 'device_vendor_msft_policy_config_windowsinkworkspace_allowwindowsinkworkspace'
                        odataType = '#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance'
                    }

                }
            );
            Technologies          = "mdm";
            TenantId              = $OrganizationName;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
