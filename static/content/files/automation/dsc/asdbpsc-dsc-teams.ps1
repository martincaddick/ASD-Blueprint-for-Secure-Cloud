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
        TeamsAppPermissionPolicy "TeamsAppPermissionPolicy-Global"
        {
            ApplicationId          = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint  = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DefaultCatalogApps     = @();
            DefaultCatalogAppsType = "BlockedAppList";
            Ensure                 = "Present";
            GlobalCatalogApps      = @();
            GlobalCatalogAppsType  = "AllowedAppList";
            Identity               = "Global";
            PrivateCatalogApps     = @();
            PrivateCatalogAppsType = "AllowedAppList";
            TenantId               = $OrganizationName;
        }
        TeamsAudioConferencingPolicy "TeamsAudioConferencingPolicy-Global"
        {
            AllowTollFreeDialin       = $True;
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                    = "Present";
            Identity                  = "Global";
            MeetingInvitePhoneNumbers = @();
            TenantId                  = $OrganizationName;
        }
        TeamsCallHoldPolicy "TeamsCallHoldPolicy-Global"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                = "Present";
            Identity              = "Global";
            TenantId              = $OrganizationName;
        }
        TeamsCallingPolicy "TeamsCallingPolicy-Global"
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysEnabled";
            AllowWebPSTNCalling               = $False;
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Enabled";
            CallRecordingExpirationDays       = 60;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                            = "Present";
            Identity                          = "Global";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
            TenantId                          = $OrganizationName;
        }
        TeamsCallingPolicy "TeamsCallingPolicy-Tag:AllowCalling"
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
            TenantId                          = $OrganizationName;
        }
        TeamsCallingPolicy "TeamsCallingPolicy-Tag:DisallowCalling"
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $False;
            AllowCallGroups                   = $False;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $False;
            AllowPrivateCalling               = $False;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $True;
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                            = "Present";
            Identity                          = "Tag:DisallowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
            TenantId                          = $OrganizationName;
        }
        TeamsCallingPolicy "TeamsCallingPolicy-Tag:AllowCallingPreventTollBypass"
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCallingPreventTollBypass";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $True;
            SpamFilteringEnabledType          = "Enabled";
            TenantId                          = $OrganizationName;
        }
        TeamsCallingPolicy "TeamsCallingPolicy-Tag:AllowCallingPreventForwardingtoPhone"
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCallingPreventForwardingtoPhone";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
            TenantId                          = $OrganizationName;
        }
        TeamsChannelsPolicy "TeamsChannelsPolicy-Global"
        {
            AllowChannelSharingToExternalUser             = $False;
            AllowOrgWideTeamCreation                      = $True;
            AllowPrivateChannelCreation                   = $True;
            AllowSharedChannelCreation                    = $True;
            AllowUserToParticipateInExternalSharedChannel = $False;
            ApplicationId                                 = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                         = $ConfigurationData.NonNodeData.CertificateThumbprint;
            EnablePrivateTeamDiscovery                    = $False;
            Ensure                                        = "Present";
            Identity                                      = "Global";
            TenantId                                      = $OrganizationName;
        }
        TeamsChannelsPolicy "TeamsChannelsPolicy-Tag:Default"
        {
            AllowChannelSharingToExternalUser             = $True;
            AllowOrgWideTeamCreation                      = $True;
            AllowPrivateChannelCreation                   = $True;
            AllowSharedChannelCreation                    = $True;
            AllowUserToParticipateInExternalSharedChannel = $True;
            ApplicationId                                 = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                         = $ConfigurationData.NonNodeData.CertificateThumbprint;
            EnablePrivateTeamDiscovery                    = $False;
            Ensure                                        = "Present";
            Identity                                      = "Tag:Default";
            TenantId                                      = $OrganizationName;
        }
        TeamsClientConfiguration "TeamsClientConfiguration-Global"
        {
            AllowBox                         = $False;
            AllowDropBox                     = $False;
            AllowEgnyte                      = $False;
            AllowEmailIntoChannel            = $True;
            AllowGoogleDrive                 = $False;
            AllowGuestUser                   = $False;
            AllowOrganizationTab             = $True;
            AllowResourceAccountSendMessage  = $True;
            AllowScopedPeopleSearchandAccess = $True;
            AllowShareFile                   = $False;
            AllowSkypeBusinessInterop        = $True;
            ApplicationId                    = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint            = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ContentPin                       = "RequiredOutsideScheduleMeeting";
            Identity                         = "Global";
            ResourceAccountContentAccess     = "NoAccess";
            TenantId                         = $OrganizationName;
        }
        TeamsComplianceRecordingPolicy "TeamsComplianceRecordingPolicy-Global"
        {
            ApplicationId                                       = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                               = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ComplianceRecordingApplications                     = @();
            DisableComplianceRecordingAudioNotificationForCalls = $False;
            Enabled                                             = $False;
            Ensure                                              = "Present";
            Identity                                            = "Global";
            TenantId                                            = $OrganizationName;
            WarnUserOnRemoval                                   = $True;
        }
        TeamsDialInConferencingTenantSettings "TeamsDialInConferencingTenantSettings"
        {
            AllowPSTNOnlyMeetingsByDefault   = $False;
            ApplicationId                    = $ConfigurationData.NonNodeData.ApplicationId;
            AutomaticallyMigrateUserMeetings = $True;
            AutomaticallyReplaceAcpProvider  = $False;
            AutomaticallySendEmailsToUsers   = $True;
            CertificateThumbprint            = $ConfigurationData.NonNodeData.CertificateThumbprint;
            EnableDialOutJoinConfirmation    = $False;
            EnableEntryExitNotifications     = $True;
            EntryExitAnnouncementsType       = "ToneOnly";
            IsSingleInstance                 = "Yes";
            MaskPstnNumbersType              = "MaskedForExternalUsers";
            PinLength                        = 5;
            TenantId                         = $OrganizationName;
        }
        TeamsEventsPolicy "TeamsEventsPolicy-Global"
        {
            AllowedQuestionTypesInRegistrationForm  = "AllQuestions";
            AllowedTownhallTypesForRecordingPublish = "Everyone";
            AllowedWebinarTypesForRecordingPublish  = "Everyone";
            AllowEmailEditing                       = "Enabled";
            AllowEventIntegrations                  = $True;
            AllowTownhalls                          = "Enabled";
            AllowWebinars                           = "Enabled";
            ApplicationId                           = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                   = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description                             = "Default policy";
            Ensure                                  = "Present";
            EventAccessType                         = "Everyone";
            Identity                                = "Global";
            TenantId                                = $OrganizationName;
            TownhallChatExperience                  = "Optimized";
            UseMicrosoftECDN                        = $True;
        }
        TeamsFederationConfiguration "TeamsFederationConfiguration-Global"
        {
            AllowedDomains                              = @();
            AllowFederatedUsers                         = $False;
            AllowPublicUsers                            = $True;
            AllowTeamsConsumer                          = $False;
            AllowTeamsConsumerInbound                   = $True;
            ApplicationId                               = $ConfigurationData.NonNodeData.ApplicationId;
            BlockedDomains                              = @();
            CertificateThumbprint                       = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Identity                                    = "Global";
            RestrictTeamsConsumerToExternalUserProfiles = $False;
            SharedSipAddressSpace                       = $False;
            TenantId                                    = $OrganizationName;
            TreatDiscoveredPartnersAsUnverified         = $False;
        }
        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Global"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                    = "Present";
            Identity                  = "Global";
            ReceiveSurveysMode        = "EnabledUserOverride";
            TenantId                  = $OrganizationName;
            UserInitiatedMode         = "Enabled";
        }
        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Tag:UserChoice"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                    = "Present";
            Identity                  = "Tag:UserChoice";
            ReceiveSurveysMode        = "EnabledUserOverride";
            TenantId                  = $OrganizationName;
            UserInitiatedMode         = "Enabled";
        }
        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Tag:Enabled"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                    = "Present";
            Identity                  = "Tag:Enabled";
            ReceiveSurveysMode        = "Enabled";
            TenantId                  = $OrganizationName;
            UserInitiatedMode         = "Enabled";
        }
        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Tag:Disabled"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                    = "Present";
            Identity                  = "Tag:Disabled";
            ReceiveSurveysMode        = "Disabled";
            TenantId                  = $OrganizationName;
            UserInitiatedMode         = "Disabled";
        }
        TeamsGuestCallingConfiguration "TeamsGuestCallingConfiguration-Global"
        {
            AllowPrivateCalling   = $True;
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Identity              = "Global";
            TenantId              = $OrganizationName;
        }
        TeamsGuestMeetingConfiguration "TeamsGuestMeetingConfiguration-Global"
        {
            AllowIPVideo            = $True;
            AllowMeetNow            = $True;
            AllowTranscription      = $False;
            ApplicationId           = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint   = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Identity                = "Global";
            LiveCaptionsEnabledType = "DisabledUserOverride";
            ScreenSharingMode       = "EntireScreen";
            TenantId                = $OrganizationName;
        }
        TeamsGuestMessagingConfiguration "TeamsGuestMessagingConfiguration-Global"
        {
            AllowGiphy             = $True;
            AllowImmersiveReader   = $True;
            AllowMemes             = $True;
            AllowStickers          = $True;
            AllowUserChat          = $True;
            AllowUserDeleteChat    = $True;
            AllowUserDeleteMessage = $True;
            AllowUserEditMessage   = $True;
            ApplicationId          = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint  = $ConfigurationData.NonNodeData.CertificateThumbprint;
            GiphyRatingType        = "Moderate";
            Identity               = "Global";
            TenantId               = $OrganizationName;
        }
        TeamsMeetingBroadcastConfiguration "TeamsMeetingBroadcastConfiguration-Global"
        {
            AllowSdnProviderForBroadcastMeeting = $False;
            ApplicationId                       = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint               = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Identity                            = "Global";
            SdnApiTemplateUrl                   = "";
            SdnApiToken                         = $ConfigurationData.Settings.SdnApiToken;
            SdnLicenseId                        = "";
            SdnProviderName                     = "";
            SupportURL                          = "https://support.office.com/home/contact";
            TenantId                            = $OrganizationName;
        }
        TeamsMeetingBroadcastPolicy "TeamsMeetingBroadcastPolicy-Global"
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            ApplicationId                   = $ConfigurationData.NonNodeData.ApplicationId;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            CertificateThumbprint           = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                          = "Present";
            Identity                        = "Global";
            TenantId                        = $OrganizationName;
        }
        TeamsMeetingBroadcastPolicy "TeamsMeetingBroadcastPolicy-Tag:Default"
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            ApplicationId                   = $ConfigurationData.NonNodeData.ApplicationId;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            CertificateThumbprint           = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                          = "Present";
            Identity                        = "Tag:Default";
            TenantId                        = $OrganizationName;
        }
        TeamsMeetingConfiguration "TeamsMeetingConfiguration-Global"
        {
            ApplicationId               = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint       = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ClientAppSharingPort        = 50040;
            ClientAppSharingPortRange   = 20;
            ClientAudioPort             = 50000;
            ClientAudioPortRange        = 20;
            ClientMediaPortRangeEnabled = $True;
            ClientVideoPort             = 50020;
            ClientVideoPortRange        = 20;
            CustomFooterText            = "";
            DisableAnonymousJoin        = $False;
            EnableQoS                   = $False;
            Identity                    = "Global";
            TenantId                    = $OrganizationName;
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Global"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $True;
            AllowWatermarkForCameraVideo               = $True;
            AllowWatermarkForScreenSharing             = $True;
            AllowWhiteboard                            = $True;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "OrganizerOnly";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            DesignatedPresenterRoleMode                = "EveryoneInCompanyUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Global";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = -1;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:AllOn"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Tag:AllOn";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:RestrictedAnonymousAccess"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Tag:RestrictedAnonymousAccess";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:AllOff"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $False;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $False;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $False;
            AllowPowerPointSharing                     = $False;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $False;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $False;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $False;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Tag:AllOff";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Disabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "Disabled";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:RestrictedAnonymousNoRecording"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $False;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            Description                                = "Do not assign. This policy is similar to global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Tag:RestrictedAnonymousNoRecording";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:Default"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Tag:Default";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:Kiosk"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            ApplicationId                              = $ConfigurationData.NonNodeData.ApplicationId;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            CertificateThumbprint                      = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelRecordingDownload                   = "Allow";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            Identity                                   = "Tag:Kiosk";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            TenantId                                   = $OrganizationName;
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }
        TeamsMessagingPolicy "TeamsMessagingPolicy-Global"
        {
            AllowCommunicationComplianceEndUserReporting = $True;
            AllowFluidCollaborate                        = $False;
            AllowGiphy                                   = $False;
            AllowImmersiveReader                         = $True;
            AllowMemes                                   = $False;
            AllowOwnerDeleteMessage                      = $True;
            AllowPriorityMessages                        = $True;
            AllowRemoveUser                              = $True;
            AllowSecurityEndUserReporting                = $True;
            AllowSmartCompose                            = $True;
            AllowSmartReply                              = $False;
            AllowStickers                                = $False;
            AllowUrlPreviews                             = $False;
            AllowUserChat                                = $True;
            AllowUserDeleteChat                          = $True;
            AllowUserDeleteMessage                       = $True;
            AllowUserEditMessage                         = $True;
            AllowUserTranslation                         = $False;
            AllowVideoMessages                           = $True;
            ApplicationId                                = $ConfigurationData.NonNodeData.ApplicationId;
            AudioMessageEnabledType                      = "ChatsAndChannels";
            CertificateThumbprint                        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelsInChatListEnabledType                = "DisabledUserOverride";
            Ensure                                       = "Present";
            GiphyRatingType                              = "Strict";
            Identity                                     = "Global";
            ReadReceiptsEnabledType                      = "UserPreference";
            TenantId                                     = $OrganizationName;
        }
        TeamsMessagingPolicy "TeamsMessagingPolicy-Default"
        {
            AllowCommunicationComplianceEndUserReporting = $True;
            AllowFluidCollaborate                        = $False;
            AllowGiphy                                   = $True;
            AllowImmersiveReader                         = $True;
            AllowMemes                                   = $True;
            AllowOwnerDeleteMessage                      = $False;
            AllowPriorityMessages                        = $True;
            AllowRemoveUser                              = $True;
            AllowSecurityEndUserReporting                = $True;
            AllowSmartCompose                            = $True;
            AllowSmartReply                              = $True;
            AllowStickers                                = $True;
            AllowUrlPreviews                             = $True;
            AllowUserChat                                = $True;
            AllowUserDeleteChat                          = $True;
            AllowUserDeleteMessage                       = $True;
            AllowUserEditMessage                         = $True;
            AllowUserTranslation                         = $True;
            AllowVideoMessages                           = $True;
            ApplicationId                                = $ConfigurationData.NonNodeData.ApplicationId;
            AudioMessageEnabledType                      = "ChatsAndChannels";
            CertificateThumbprint                        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelsInChatListEnabledType                = "DisabledUserOverride";
            Ensure                                       = "Present";
            GiphyRatingType                              = "Moderate";
            Identity                                     = "Default";
            ReadReceiptsEnabledType                      = "UserPreference";
            TenantId                                     = $OrganizationName;
        }
        TeamsMessagingPolicy "TeamsMessagingPolicy-EduFaculty"
        {
            AllowCommunicationComplianceEndUserReporting = $True;
            AllowFluidCollaborate                        = $False;
            AllowGiphy                                   = $False;
            AllowImmersiveReader                         = $True;
            AllowMemes                                   = $True;
            AllowOwnerDeleteMessage                      = $True;
            AllowPriorityMessages                        = $True;
            AllowRemoveUser                              = $True;
            AllowSecurityEndUserReporting                = $True;
            AllowSmartCompose                            = $True;
            AllowSmartReply                              = $True;
            AllowStickers                                = $True;
            AllowUrlPreviews                             = $True;
            AllowUserChat                                = $True;
            AllowUserDeleteChat                          = $True;
            AllowUserDeleteMessage                       = $True;
            AllowUserEditMessage                         = $True;
            AllowUserTranslation                         = $True;
            AllowVideoMessages                           = $True;
            ApplicationId                                = $ConfigurationData.NonNodeData.ApplicationId;
            AudioMessageEnabledType                      = "ChatsAndChannels";
            CertificateThumbprint                        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelsInChatListEnabledType                = "DisabledUserOverride";
            Ensure                                       = "Present";
            GiphyRatingType                              = "Strict";
            Identity                                     = "EduFaculty";
            ReadReceiptsEnabledType                      = "UserPreference";
            TenantId                                     = $OrganizationName;
        }
        TeamsMessagingPolicy "TeamsMessagingPolicy-EduStudent"
        {
            AllowCommunicationComplianceEndUserReporting = $True;
            AllowFluidCollaborate                        = $False;
            AllowGiphy                                   = $False;
            AllowImmersiveReader                         = $True;
            AllowMemes                                   = $True;
            AllowOwnerDeleteMessage                      = $False;
            AllowPriorityMessages                        = $True;
            AllowRemoveUser                              = $True;
            AllowSecurityEndUserReporting                = $True;
            AllowSmartCompose                            = $True;
            AllowSmartReply                              = $True;
            AllowStickers                                = $True;
            AllowUrlPreviews                             = $True;
            AllowUserChat                                = $True;
            AllowUserDeleteChat                          = $True;
            AllowUserDeleteMessage                       = $True;
            AllowUserEditMessage                         = $True;
            AllowUserTranslation                         = $True;
            AllowVideoMessages                           = $True;
            ApplicationId                                = $ConfigurationData.NonNodeData.ApplicationId;
            AudioMessageEnabledType                      = "ChatsAndChannels";
            CertificateThumbprint                        = $ConfigurationData.NonNodeData.CertificateThumbprint;
            ChannelsInChatListEnabledType                = "DisabledUserOverride";
            Ensure                                       = "Present";
            GiphyRatingType                              = "Strict";
            Identity                                     = "EduStudent";
            ReadReceiptsEnabledType                      = "UserPreference";
            TenantId                                     = $OrganizationName;
        }
        TeamsShiftsPolicy "TeamsShiftsPolicy-Global"
        {
            AccessGracePeriodMinutes       = 15;
            AccessType                     = "UnrestrictedAccess_TeamsApp";
            ApplicationId                  = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint          = $ConfigurationData.NonNodeData.CertificateThumbprint;
            EnableScheduleOwnerPermissions = $False;
            Ensure                         = "Present";
            Identity                       = "Global";
            ShiftNoticeFrequency           = "Never";
            ShiftNoticeMessageCustom       = "";
            ShiftNoticeMessageType         = "DefaultMessage";
            TenantId                       = $OrganizationName;
        }
        TeamsShiftsPolicy "TeamsShiftsPolicy-Tag:Default"
        {
            AccessGracePeriodMinutes       = 15;
            AccessType                     = "UnrestrictedAccess_TeamsApp";
            ApplicationId                  = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint          = $ConfigurationData.NonNodeData.CertificateThumbprint;
            EnableScheduleOwnerPermissions = $False;
            Ensure                         = "Present";
            Identity                       = "Tag:Default";
            ShiftNoticeFrequency           = "Never";
            ShiftNoticeMessageCustom       = "";
            ShiftNoticeMessageType         = "DefaultMessage";
            TenantId                       = $OrganizationName;
        }
        TeamsTemplatesPolicy "TeamsTemplatesPolicy-Global"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                = "Present";
            HiddenTemplates       = @();
            Identity              = "Global";
            TenantId              = $OrganizationName;
        }
        TeamsTenantDialPlan "TeamsTenantDialPlan-Global"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                = "Present";
            Identity              = "Global";
            NormalizationRules    = @();
            SimpleName            = "DefaultTenantDialPlan";
            TenantId              = $OrganizationName;
        }
        TeamsUpdateManagementPolicy "TeamsUpdateManagementPolicy-Global"
        {
            AllowManagedUpdates   = $False;
            AllowPreview          = $False;
            AllowPublicPreview    = "FollowOfficePreview";
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                = "Present";
            Identity              = "Global";
            TenantId              = $OrganizationName;
            UpdateDayOfWeek       = 1;
            UpdateTime            = "18:00";
            UpdateTimeOfDay       = "6:00 PM";
            UseNewTeamsClient     = "MicrosoftChoice";
        }
        TeamsUpdateManagementPolicy "TeamsUpdateManagementPolicy-Tag:Default"
        {
            AllowManagedUpdates   = $False;
            AllowPreview          = $False;
            AllowPublicPreview    = "FollowOfficePreview";
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Ensure                = "Present";
            Identity              = "Tag:Default";
            TenantId              = $OrganizationName;
            UpdateDayOfWeek       = 1;
            UpdateTime            = "18:00";
            UpdateTimeOfDay       = "6:00 PM";
            UseNewTeamsClient     = "MicrosoftChoice";
        }
        TeamsUpgradeConfiguration "TeamsUpgradeConfiguration"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DownloadTeams         = $True;
            IsSingleInstance      = "Yes";
            SfBMeetingJoinUx      = "NativeLimitedClient";
            TenantId              = $OrganizationName;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
