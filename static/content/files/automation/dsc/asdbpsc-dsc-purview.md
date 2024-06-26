# asdbpsc-dsc-purview
## SCDLPCompliancePolicy-Add PSPF X-Header and Subject Marking
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|0|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Add PSPF X-Header and Subject Marking|
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|This DLP policy is intended to apply X-Protective-Marking X-headers and subject markings to emails|
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Add PSPF X-Header and Subject Marking|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Block un-labelled email
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|1|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Block un-labelled email|
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Block emails when the user has not set a classification|
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Block un-labelled email|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Block non-permitted classifications
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|2|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Block non-permitted classifications|
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Block classifications which are not permitted to be stored on the system.|
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Block non-permitted classifications|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Block email of PROTECTED items
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|3|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Block email of PROTECTED items|
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Block email of PROTECTED items|
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Block email of PROTECTED items|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Block external sharing of PROTECTED items
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|4|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Block external sharing of PROTECTED items|
|**OneDriveLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Block external sharing of PROTECTED items|
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Block external sharing of PROTECTED items|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Limit internal sharing of PROTECTED items
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|5|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Limit internal sharing of PROTECTED items|
|**OneDriveLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|This policy is intended to ensure that if a user who is not approved for access to PROTECTED content does gain access, they are not able to further share it. This will not block receipt of a sharing link by unauthorised internal users. To mitigate related internal risks, consider other controls|
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Limit internal sharing of PROTECTED items|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Warn users distributing OFFICIAL: Sensitive items
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|6|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Warn users distributing OFFICIAL: Sensitive items|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Warn users distributing OFFICIAL: Sensitive items|
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Warn users distributing OFFICIAL: Sensitive items|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Australia Privacy Act Enhanced
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|7|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**EndpointDlpLocation**|All<br><br>
|**Name**|Australia Privacy Act Enhanced|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Helps detect the presence of information commonly considered to be subject to the privacy act in Australia, like driver's license and passport number. This enhanced template extends the original by also detecting people's full names, medical terms and conditions, and Australia physical addresses.|
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Australia Privacy Act Enhanced|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**TeamsLocation**|All<br><br>
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Australia Personally Identifiable Information (PII) Data
|Item|Value|
|:---|:---|
|**OnPremisesScannerDlpLocation**|All<br><br>
|**OneDriveLocationException**|$Null
|**Priority**|8|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**EndpointDlpLocation**|All<br><br>
|**Name**|Australia Personally Identifiable Information (PII) Data|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Helps detect the presence of information commonly considered to be personally identifiable information (PII) in Australia, like tax file number and driver's license.|
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Australia Personally Identifiable Information (PII) Data|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**TeamsLocation**|All<br><br>
|**ThirdPartyAppDlpLocation**|All<br><br>
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Australia Health Records Act (HRIP Act) Enhanced
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|9|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**EndpointDlpLocation**|All<br><br>
|**Name**|Australia Health Records Act (HRIP Act) Enhanced|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Helps detect the presence of information commonly considered to be subject to the Health Records and Information Privacy (HRIP) act in Australia, like medical account number and tax file number. This enhanced template extends the original by also detecting people's full names, medical terms and conditions, and Australia physical addresses.|
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Australia Health Records Act (HRIP Act) Enhanced|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**TeamsLocation**|All<br><br>
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Australia Financial Data
|Item|Value|
|:---|:---|
|**OnPremisesScannerDlpLocation**|All<br><br>
|**OneDriveLocationException**|$Null
|**Priority**|10|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**EndpointDlpLocation**|All<br><br>
|**Name**|Australia Financial Data|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|Helps detect the presence of information commonly considered to be financial data in Australia, including credit cards, and SWIFT codes.|
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Australia Financial Data|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**TeamsLocation**|All<br><br>
|**ThirdPartyAppDlpLocation**|All<br><br>
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Limit disclosure of potentially PROTECTED information
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|11|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Limit disclosure of potentially PROTECTED information|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|$Null
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Limit disclosure of potentially PROTECTED information|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**TeamsLocation**|All<br><br>
|**PowerBIDlpLocationException**|$Null

## SCDLPCompliancePolicy-Limit disclosure of sensitive information
|Item|Value|
|:---|:---|
|**OneDriveLocationException**|$Null
|**Priority**|12|
|**EndpointDlpLocationException**|$Null
|**ExchangeSenderMemberOfException**|$Null
|**TeamsLocationException**|$Null
|**Name**|Limit disclosure of sensitive information|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|All<br><br>
|**ExchangeSenderMemberOf**|$Null
|**Comment**|$Null
|**SharePointLocation**|All<br><br>
|**SharePointLocationException**|$Null
|**ThirdPartyAppDlpLocationException**|$Null
|**ResourceInstanceName**|SCDLPCompliancePolicy-Limit disclosure of sensitive information|
|**OnPremisesScannerDlpLocationException**|$Null
|**Mode**|Enable|
|**Ensure**|Present|
|**TeamsLocation**|All<br><br>
|**PowerBIDlpLocationException**|$Null

## SCLabelPolicy-All User Policy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ResourceInstanceName**|SCLabelPolicy-All User Policy|
|**AdvancedSettings**|Key = mandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = attachmentaction<br>CIMInstance = MSFT_SCLabelSetting<br>Value = Recommended<br><br>Key = requiredowngradejustification<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = powerbimandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = siteandgroupmandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = teamworkmandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = disablemandatoryinoutlook<br>CIMInstance = MSFT_SCLabelSetting<br>Value = false<br><br>
|**Ensure**|Present|
|**Name**|All User Policy|
|**ExchangeLocation**|All<br><br>
|**Labels**|OS LS<br>OS NC LP<br>OS PP<br>UNOFFICIAL<br>OS LP<br>OS NC PP<br>OFFICIAL Sensitive<br>OFFICIAL<br>OS group<br>OS NC<br>OS NC LS<br><br>

## SCLabelPolicy-Test Policy
|Item|Value|
|:---|:---|
|**Comment**|This policy is intended for testing the impact of policy setting changes and would not typically differ from the standard all user policy except for during the testing of policy changes.|
|**ResourceInstanceName**|SCLabelPolicy-Test Policy|
|**AdvancedSettings**|Key = mandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = attachmentaction<br>CIMInstance = MSFT_SCLabelSetting<br>Value = Automatic<br><br>Key = requiredowngradejustification<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = powerbimandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = siteandgroupmandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = teamworkmandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = disablemandatoryinoutlook<br>CIMInstance = MSFT_SCLabelSetting<br>Value = false<br><br>
|**Ensure**|Present|
|**Name**|Test Policy|
|**ExchangeLocation**|All<br><br>
|**Labels**|UNOFFICIAL<br>P NC PP<br>OS NC LP<br>P NC LP<br>P NC<br>P C LP<br>P C LS<br>P NC LS<br>OS NC PP<br>PROTECTED<br>P C<br>OS NC LS<br>OS LS<br>P C PP<br>OS NC<br>P LS<br>OS PP<br>OS LP<br>P group<br>OFFICIAL<br>OS group<br>P PP<br>OFFICIAL Sensitive<br>P LP<br><br>

## SCLabelPolicy-Protected Policy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ResourceInstanceName**|SCLabelPolicy-Protected Policy|
|**AdvancedSettings**|Key = mandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = attachmentaction<br>CIMInstance = MSFT_SCLabelSetting<br>Value = Recommended<br><br>Key = requiredowngradejustification<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = powerbimandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = siteandgroupmandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = teamworkmandatory<br>CIMInstance = MSFT_SCLabelSetting<br>Value = true<br><br>Key = disablemandatoryinoutlook<br>CIMInstance = MSFT_SCLabelSetting<br>Value = false<br><br>
|**Ensure**|Present|
|**Name**|Protected Policy|
|**ExchangeLocation**|All<br><br>
|**Labels**|PROTECTED<br>P NC LP<br>P C LP<br>P LS<br>P group<br>P LP<br>P NC<br>P NC LS<br>P PP<br>P C<br>P NC PP<br>P C LS<br>P C PP<br><br>

## SCRetentionCompliancePolicy-Exchange mailboxes 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ModernGroupLocation**|$Null
|**OneDriveLocationException**|$Null
|**Name**|Exchange mailboxes 7 year hold|
|**PublicFolderLocation**|$Null
|**RestrictiveRetention**|False|
|**OneDriveLocation**|$Null
|**ExchangeLocation**|All<br><br>
|**SharePointLocation**|$Null
|**Ensure**|Present|
|**ModernGroupLocationException**|$Null
|**ExchangeLocationException**|$Null
|**DynamicScopeLocation**|$Null
|**SharePointLocationException**|$Null
|**ResourceInstanceName**|SCRetentionCompliancePolicy-Exchange mailboxes 7 year hold|
|**SkypeLocation**|$Null
|**Enabled**|True|
|**SkypeLocationException**|$Null

## SCRetentionCompliancePolicy-Microsoft 365 Group mailboxes & sites 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ModernGroupLocation**|All<br><br>
|**OneDriveLocationException**|$Null
|**Name**|Microsoft 365 Group mailboxes & sites 7 year hold|
|**PublicFolderLocation**|$Null
|**RestrictiveRetention**|False|
|**OneDriveLocation**|$Null
|**ExchangeLocation**|$Null
|**SharePointLocation**|$Null
|**Ensure**|Present|
|**ModernGroupLocationException**|$Null
|**ExchangeLocationException**|$Null
|**DynamicScopeLocation**|$Null
|**SharePointLocationException**|$Null
|**ResourceInstanceName**|SCRetentionCompliancePolicy-Microsoft 365 Group mailboxes & sites 7 year hold|
|**SkypeLocation**|$Null
|**Enabled**|True|
|**SkypeLocationException**|$Null

## SCRetentionCompliancePolicy-OneDrive accounts 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ModernGroupLocation**|$Null
|**OneDriveLocationException**|$Null
|**Name**|OneDrive accounts 7 year hold|
|**PublicFolderLocation**|$Null
|**RestrictiveRetention**|False|
|**OneDriveLocation**|All<br><br>
|**ExchangeLocation**|$Null
|**SharePointLocation**|$Null
|**Ensure**|Present|
|**ModernGroupLocationException**|$Null
|**ExchangeLocationException**|$Null
|**DynamicScopeLocation**|$Null
|**SharePointLocationException**|$Null
|**ResourceInstanceName**|SCRetentionCompliancePolicy-OneDrive accounts 7 year hold|
|**SkypeLocation**|$Null
|**Enabled**|True|
|**SkypeLocationException**|$Null

## SCRetentionCompliancePolicy-Exchange public folders 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ModernGroupLocation**|$Null
|**OneDriveLocationException**|$Null
|**Name**|Exchange public folders 7 year hold|
|**PublicFolderLocation**|All<br><br>
|**RestrictiveRetention**|False|
|**OneDriveLocation**|$Null
|**ExchangeLocation**|$Null
|**SharePointLocation**|$Null
|**Ensure**|Present|
|**ModernGroupLocationException**|$Null
|**ExchangeLocationException**|$Null
|**DynamicScopeLocation**|$Null
|**SharePointLocationException**|$Null
|**ResourceInstanceName**|SCRetentionCompliancePolicy-Exchange public folders 7 year hold|
|**SkypeLocation**|$Null
|**Enabled**|True|
|**SkypeLocationException**|$Null

## SCRetentionCompliancePolicy-Teams chats and Copilot interactions 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**TeamsChatLocationException**|$Null
|**Name**|Teams chats and Copilot interactions 7 year hold|
|**TeamsChatLocation**|All<br><br>
|**TeamsChannelLocationException**|$Null
|**Ensure**|Present|
|**RestrictiveRetention**|False|
|**TeamsChannelLocation**|$Null
|**ResourceInstanceName**|SCRetentionCompliancePolicy-Teams chats and Copilot interactions 7 year hold|
|**Enabled**|True|

## SCRetentionCompliancePolicy-Sharepoint classic 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ModernGroupLocation**|$Null
|**OneDriveLocationException**|$Null
|**Name**|Sharepoint classic 7 year hold|
|**PublicFolderLocation**|$Null
|**RestrictiveRetention**|False|
|**OneDriveLocation**|$Null
|**ExchangeLocation**|$Null
|**SharePointLocation**|All<br><br>
|**Ensure**|Present|
|**ModernGroupLocationException**|$Null
|**ExchangeLocationException**|$Null
|**DynamicScopeLocation**|$Null
|**SharePointLocationException**|$Null
|**ResourceInstanceName**|SCRetentionCompliancePolicy-Sharepoint classic 7 year hold|
|**SkypeLocation**|$Null
|**Enabled**|True|
|**SkypeLocationException**|$Null

## SCRetentionCompliancePolicy-Teams channel messages 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**TeamsChatLocationException**|$Null
|**Name**|Teams channel messages 7 year hold|
|**TeamsChatLocation**|$Null
|**TeamsChannelLocationException**|$Null
|**Ensure**|Present|
|**RestrictiveRetention**|False|
|**TeamsChannelLocation**|All<br><br>
|**ResourceInstanceName**|SCRetentionCompliancePolicy-Teams channel messages 7 year hold|
|**Enabled**|True|

## SCRetentionComplianceRule-Exchange mailboxes 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**RetentionDuration**|2555|
|**Name**|Exchange mailboxes 7 year hold|
|**ExcludedItemClasses**|$Null
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|CreationAgeInDays|
|**ContentMatchQuery**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-Exchange mailboxes 7 year hold|
|**Policy**|Exchange mailboxes 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCRetentionComplianceRule-Microsoft 365 Group mailboxes & sites 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**RetentionDuration**|2555|
|**Name**|Microsoft 365 Group mailboxes & sites 7 year hold|
|**ExcludedItemClasses**|$Null
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|ModificationAgeInDays|
|**ContentMatchQuery**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-Microsoft 365 Group mailboxes & sites 7 year hold|
|**Policy**|Microsoft 365 Group mailboxes & sites 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCRetentionComplianceRule-OneDrive accounts 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**RetentionDuration**|2555|
|**Name**|OneDrive accounts 7 year hold|
|**ExcludedItemClasses**|$Null
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|ModificationAgeInDays|
|**ContentMatchQuery**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-OneDrive accounts 7 year hold|
|**Policy**|OneDrive accounts 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCRetentionComplianceRule-Exchange public folders 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**RetentionDuration**|2555|
|**Name**|Exchange public folders 7 year hold|
|**ExcludedItemClasses**|$Null
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|ModificationAgeInDays|
|**ContentMatchQuery**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-Exchange public folders 7 year hold|
|**Policy**|Exchange public folders 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCRetentionComplianceRule-Teams chats and Copilot interactions 7 year hold
|Item|Value|
|:---|:---|
|**RetentionDuration**|2555|
|**Name**|Teams chats and Copilot interactions 7 year hold|
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|CreationAgeInDays|
|**Comment**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-Teams chats and Copilot interactions 7 year hold|
|**Policy**|Teams chats and Copilot interactions 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCRetentionComplianceRule-Sharepoint classic 7 year hold
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**RetentionDuration**|2555|
|**Name**|Sharepoint classic 7 year hold|
|**ExcludedItemClasses**|$Null
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|ModificationAgeInDays|
|**ContentMatchQuery**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-Sharepoint classic 7 year hold|
|**Policy**|Sharepoint classic 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCRetentionComplianceRule-Teams channel messages 7 year hold
|Item|Value|
|:---|:---|
|**RetentionDuration**|2555|
|**Name**|Teams channel messages 7 year hold|
|**RetentionComplianceAction**|Keep|
|**Ensure**|Present|
|**ExpirationDateOption**|CreationAgeInDays|
|**Comment**|$Null
|**ResourceInstanceName**|SCRetentionComplianceRule-Teams channel messages 7 year hold|
|**Policy**|Teams channel messages 7 year hold|
|**RetentionDurationDisplayHint**|Days|

## SCSensitivityLabel-UNOFFICIAL
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**SiteAndGroupProtectionBlockAccess**|False|
|**DisplayName**|UNOFFICIAL|
|**ApplyContentMarkingFooterMargin**|5|
|**ResourceInstanceName**|SCSensitivityLabel-UNOFFICIAL|
|**SiteAndGroupProtectionAllowAccessToGuestUsers**|True|
|**SiteAndGroupProtectionAllowLimitedAccess**|False|
|**SiteAndGroupExternalSharingControlType**|ExternalUserSharingOnly|
|**ApplyContentMarkingHeaderText**|UNOFFICIAL|
|**Priority**|0|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Comment**|$Null
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**SiteAndGroupProtectionPrivacy**|public|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ApplyContentMarkingFooterText**|UNOFFICIAL|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**SiteAndGroupProtectionAllowFullAccess**|False|
|**Tooltip**|No damage. This information does not form part of official duty.|
|**AdvancedSettings**|Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingFooterAlignment**|Center|
|**SiteAndGroupProtectionAllowEmailFromGuestUsers**|True|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**SiteAndGroupProtectionEnabled**|True|
|**Name**|UNOFFICIAL|
|**ApplyContentMarkingHeaderMargin**|5|
|**ApplyContentMarkingHeaderEnabled**|True|

## SCSensitivityLabel-OFFICIAL
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**Priority**|1|
|**DisplayName**|OFFICIAL|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|OFFICIAL|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|OFFICIAL|
|**Name**|OFFICIAL|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-OFFICIAL|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|No or insignificant damage. This is the majority of routine information.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-OFFICIAL Sensitive Group
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**Priority**|2|
|**DisplayName**|OFFICIAL Sensitive Group|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive|
|**Name**|OS group|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br><br>
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-OFFICIAL Sensitive Group|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-OFFICIAL Sensitive
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**SiteAndGroupProtectionBlockAccess**|True|
|**DisplayName**|OFFICIAL Sensitive|
|**ApplyContentMarkingFooterMargin**|5|
|**ResourceInstanceName**|SCSensitivityLabel-OFFICIAL Sensitive|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**SiteAndGroupProtectionAllowLimitedAccess**|False|
|**SiteAndGroupExternalSharingControlType**|ExistingExternalUserSharingOnly|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive|
|**Priority**|3|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ParentId**|OS group|
|**Comment**|$Null
|**SiteAndGroupProtectionAllowAccessToGuestUsers**|True|
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**SiteAndGroupProtectionPrivacy**|private|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**SiteAndGroupProtectionAllowEmailFromGuestUsers**|True|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**SiteAndGroupProtectionEnabled**|True|
|**Name**|OFFICIAL Sensitive|
|**ApplyContentMarkingHeaderMargin**|5|
|**SiteAndGroupProtectionAllowFullAccess**|False|

## SCSensitivityLabel-Legal-Privilege
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**DisplayName**|Legal-Privilege|
|**ApplyContentMarkingFooterMargin**|5|
|**ResourceInstanceName**|SCSensitivityLabel-Legal-Privilege|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//Legal-Privilege|
|**Priority**|4|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ParentId**|OS group|
|**Comment**|$Null
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//Legal-Privilege|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**Name**|OS LP|
|**ApplyContentMarkingHeaderMargin**|5|

## SCSensitivityLabel-Legislative Secrecy
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**DisplayName**|Legislative Secrecy|
|**ApplyContentMarkingFooterMargin**|5|
|**ResourceInstanceName**|SCSensitivityLabel-Legislative Secrecy|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//Legislative-Secrecy|
|**Priority**|5|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ParentId**|OS group|
|**Comment**|$Null
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//Legislative-Secrecy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**Name**|OS LS|
|**ApplyContentMarkingHeaderMargin**|5|

## SCSensitivityLabel-Personal-Privacy
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**DisplayName**|Personal-Privacy|
|**ApplyContentMarkingFooterMargin**|5|
|**ResourceInstanceName**|SCSensitivityLabel-Personal-Privacy|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//Personal-Privacy|
|**Priority**|6|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ParentId**|OS group|
|**Comment**|$Null
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//Personal-Privacy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**Name**|OS PP|
|**ApplyContentMarkingHeaderMargin**|5|

## SCSensitivityLabel-NATIONAL CABINET
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**DisplayName**|NATIONAL CABINET|
|**ApplyContentMarkingFooterMargin**|5|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//NATIONAL CABINET|
|**Priority**|7|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ParentId**|OS group|
|**Comment**|$Null
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//NATIONAL CABINET|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**Name**|OS NC|
|**ApplyContentMarkingHeaderMargin**|5|

## SCSensitivityLabel-NATIONAL CABINET - Legal-Privilege
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|OS group|
|**DisplayName**|NATIONAL CABINET - Legal-Privilege|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|8|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//NATIONAL CABINET//Legal-Privilege|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//NATIONAL CABINET//Legal-Privilege|
|**Name**|OS NC LP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET - Legal-Privilege|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-NATIONAL CABINET - Legislative-Secrecy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|OS group|
|**DisplayName**|NATIONAL CABINET - Legislative-Secrecy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|9|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//NATIONAL CABINET//Legislative-Secrecy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//NATIONAL CABINET//Legislative-Secrecy|
|**Name**|OS NC LS|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET - Legislative-Secrecy|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-NATIONAL CABINET - Personal-Privacy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|OS group|
|**DisplayName**|NATIONAL CABINET - Personal-Privacy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|10|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|OFFICIAL: Sensitive//NATIONAL CABINET//Personal-Privacy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|OFFICIAL: Sensitive//NATIONAL CABINET//Personal-Privacy|
|**Name**|OS NC PP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET - Personal-Privacy|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 4ea29cc6-1593-4045-aeb8-01c40219029e<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|Low to medium business impact. Limited damage to an individual, organisation or government generally if compromised.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-PROTECTED Group
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**Priority**|11|
|**DisplayName**|PROTECTED Group|
|**ApplyContentMarkingHeaderText**|PROTECTED|
|**Name**|P group|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br><br>
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-PROTECTED Group|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-PROTECTED
|Item|Value|
|:---|:---|
|**ApplyContentMarkingHeaderFontSize**|12|
|**EncryptionRightsDefinitions**|grp-protected-users@organisation.gov.au:VIEW,VIEWRIGHTSDATA,DOCEDIT,EDIT,PRINT,EXTRACT,REPLY,REPLYALL,FORWARD,OBJMODEL|
|**SiteAndGroupProtectionBlockAccess**|False|
|**EncryptionProtectionType**|template|
|**DisplayName**|PROTECTED|
|**ApplyContentMarkingFooterMargin**|5|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>
|**ResourceInstanceName**|SCSensitivityLabel-PROTECTED|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**SiteAndGroupProtectionAllowLimitedAccess**|False|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingHeaderText**|PROTECTED|
|**Priority**|12|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**ParentId**|P group|
|**Comment**|$Null
|**SiteAndGroupProtectionAllowAccessToGuestUsers**|True|
|**ApplyContentMarkingFooterEnabled**|True|
|**ApplyContentMarkingFooterFontSize**|12|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**SiteAndGroupProtectionPrivacy**|private|
|**EncryptionOfflineAccessDays**|3|
|**ApplyContentMarkingFooterText**|PROTECTED|
|**Ensure**|Present|
|**EncryptionEnabled**|True|
|**ApplyContentMarkingHeaderAlignment**|Center|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**ApplyContentMarkingHeaderEnabled**|True|
|**ApplyContentMarkingFooterAlignment**|Center|
|**SiteAndGroupProtectionAllowEmailFromGuestUsers**|True|
|**SiteAndGroupExternalSharingControlType**|Disabled|
|**SiteAndGroupProtectionEnabled**|True|
|**Name**|PROTECTED|
|**ApplyContentMarkingHeaderMargin**|5|
|**EncryptionContentExpiredOnDateInDaysOrNever**|Never|
|**SiteAndGroupProtectionAllowFullAccess**|False|

## SCSensitivityLabel-Legal-Privilege-2
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|Legal-Privilege|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|13|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//Legal-Privilege|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//Legal-Privilege|
|**Name**|P LP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-Legal-Privilege-2|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-Legislative-Secrecy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|Legislative-Secrecy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|14|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//Legislative-Secrecy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//Legislative-Secrecy|
|**Name**|P LS|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-Legislative-Secrecy|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-Personal-Privacy-2
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|Personal-Privacy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|15|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//Personal-Privacy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//Personal-Privacy|
|**Name**|P PP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-Personal-Privacy-2|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-NATIONAL CABINET-2
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|NATIONAL CABINET|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|16|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//NATIONAL CABINET|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//NATIONAL CABINET|
|**Name**|P NC|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET-2|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-NATIONAL CABINET - Legal-Privilege-2
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|NATIONAL CABINET - Legal-Privilege|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|17|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//NATIONAL CABINET//Legal-Privilege|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//NATIONAL CABINET//Legal-Privilege|
|**Name**|P NC LP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET - Legal-Privilege-2|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-NATIONAL CABINET - Legislative-Secrecy-2
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|NATIONAL CABINET - Legislative-Secrecy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|18|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//NATIONAL CABINET//Legislative-Secrecy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//NATIONAL CABINET//Legislative-Secrecy|
|**Name**|P NC LS|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET - Legislative-Secrecy-2|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-NATIONAL CABINET - Personal-Privacy-2
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|NATIONAL CABINET - Personal-Privacy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|19|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//NATIONAL CABINET//Personal-Privacy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//NATIONAL CABINET//Personal-Privacy|
|**Name**|P NC PP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-NATIONAL CABINET - Personal-Privacy-2|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-CABINET
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|CABINET|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|20|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//CABINET|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//CABINET|
|**Name**|P C|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-CABINET|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-CABINET - Legal-Privilege
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|CABINET - Legal-Privilege|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|21|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//CABINET//Legal-Privilege|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//CABINET//Legal-Privilege|
|**Name**|P C LP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-CABINET - Legal-Privilege|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-CABINET - Legislative-Secrecy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|CABINET - Legislative-Secrecy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|22|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//CABINET//Legislative-Secrecy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//CABINET//Legislative-Secrecy|
|**Name**|P C LS|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-CABINET - Legislative-Secrecy|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>

## SCSensitivityLabel-CABINET - Personal-Privacy
|Item|Value|
|:---|:---|
|**Comment**|$Null
|**ApplyContentMarkingHeaderAlignment**|Center|
|**ParentId**|P group|
|**DisplayName**|CABINET - Personal-Privacy|
|**ContentType**|File<br> Email<br>Site<br> UnifiedGroup<br>Teamwork<br><br>
|**Priority**|23|
|**ApplyContentMarkingFooterFontColor**|#FF0000|
|**ApplyContentMarkingFooterMargin**|5|
|**ApplyContentMarkingHeaderFontSize**|12|
|**ApplyContentMarkingFooterText**|PROTECTED//CABINET//Personal-Privacy|
|**Ensure**|Present|
|**ApplyContentMarkingHeaderText**|PROTECTED//CABINET//Personal-Privacy|
|**Name**|P C PP|
|**ApplyContentMarkingFooterAlignment**|Center|
|**ApplyContentMarkingFooterFontSize**|12|
|**ResourceInstanceName**|SCSensitivityLabel-CABINET - Personal-Privacy|
|**ApplyContentMarkingHeaderFontColor**|#FF0000|
|**AdvancedSettings**|Key = parentid<br>CIMInstance = MSFT_SCLabelSetting<br>Value = 3a94dc29-0602-434a-914f-e3300e52cc65<br><br>Key = isparent<br>CIMInstance = MSFT_SCLabelSetting<br>Value = False<br><br>
|**ApplyContentMarkingHeaderMargin**|5|
|**Tooltip**|High business impact. Damage to the national interest, organisations or individuals.|
|**LocaleSettings**|LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = displayName<br><br>LabelSettings = System.Collections.Hashtable<br>CIMInstance = MSFT_SCLabelLocaleSettings<br>LocaleKey = tooltip<br><br>


