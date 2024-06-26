# asdbpsc-dsc-defender
## IntuneAntivirusPolicyWindows10SettingCatalog-ASD Windows Hardening Guidelines-Antivirus
|Item|Value|
|:---|:---|
|**allowrealtimemonitoring**|1|
|**allowonaccessprotection**|1|
|**severethreats**|block|
|**submitsamplesconsent**|1|
|**Description**|$Null
|**DisplayName**|ASD Windows Hardening Guidelines-Antivirus|
|**Identity**|87fc521e-0537-40af-8363-754e3cc13cf5|
|**Assignments**|$Null
|**allowuseruiaccess**|0|
|**Ensure**|Present|
|**ResourceInstanceName**|IntuneAntivirusPolicyWindows10SettingCatalog-ASD Windows Hardening Guidelines-Antivirus|
|**moderateseveritythreats**|quarantine|
|**disablecatchupfullscan**|1|
|**signatureupdateinterval**|4|
|**allowfullscanremovabledrivescanning**|0|
|**enablelowcpupriority**|1|
|**allowcloudprotection**|1|
|**schedulescanday**|0|
|**enablenetworkprotection**|1|
|**disablecatchupquickscan**|1|
|**allowscriptscanning**|1|
|**cloudblocklevel**|0|
|**realtimescandirection**|0|
|**avgcpuloadfactor**|50|
|**checkforsignaturesbeforerunningscan**|1|
|**allowemailscanning**|0|
|**schedulequickscantime**|120|
|**puaprotection**|1|
|**lowseveritythreats**|clean|
|**allowscanningnetworkfiles**|1|
|**schedulescantime**|120|
|**allowintrusionpreventionsystem**|1|
|**allowioavprotection**|1|
|**allowarchivescanning**|1|
|**allowbehaviormonitoring**|1|
|**templateId**|804339ad-1553-4478-a742-138fb5807418_1|

## IntuneEndpointDetectionAndResponsePolicyWindows10-ASD Windows Hardening Guidelines-Endpoint Detection and Response
|Item|Value|
|:---|:---|
|**Assignments**|$Null
|**Description**|$Null
|**ResourceInstanceName**|IntuneEndpointDetectionAndResponsePolicyWindows10-ASD Windows Hardening Guidelines-Endpoint Detection and Response|
|**Ensure**|Present|
|**samplesharing**|0|
|**Identity**|a13e06b2-3309-4775-810c-5c0b75d52533|
|**DisplayName**|ASD Windows Hardening Guidelines-Endpoint Detection and Response|

## IntuneSettingCatalogASRRulesPolicyWindows10-ASD Windows Hardening Guidelines-Attack Surface Reduction
|Item|Value|
|:---|:---|
|**useadvancedprotectionagainstransomware**|block|
|**blockprocesscreationsfrompsexecandwmicommands**|block|
|**blockofficecommunicationappfromcreatingchildprocesses**|block|
|**Description**|$Null
|**blockexecutablefilesrunningunlesstheymeetprevalenceagetrustedlistcriterion**|block|
|**blockexecutionofpotentiallyobfuscatedscripts**|block|
|**blockexecutablecontentfromemailclientandwebmail**|block|
|**Assignments**|dataType = #microsoft.graph.allDevicesAssignmentTarget<br>deviceAndAppManagementAssignmentFilterType = none<br>CIMInstance = MSFT_DeviceManagementConfigurationPolicyAssignments<br>groupDisplayName = All devices<br><br>
|**blockjavascriptorvbscriptfromlaunchingdownloadedexecutablecontent**|block|
|**blockpersistencethroughwmieventsubscription**|block|
|**Ensure**|Present|
|**blockofficeapplicationsfrominjectingcodeintootherprocesses**|block|
|**blockwin32apicallsfromofficemacros**|block|
|**blockcredentialstealingfromwindowslocalsecurityauthoritysubsystem**|block|
|**DisplayName**|ASD Windows Hardening Guidelines-Attack Surface Reduction|
|**Identity**|f45cde56-9d37-4db4-afdb-822fa323b153|
|**blockofficeapplicationsfromcreatingexecutablecontent**|block|
|**blockuntrustedunsignedprocessesthatrunfromusb**|block|
|**ResourceInstanceName**|IntuneSettingCatalogASRRulesPolicyWindows10-ASD Windows Hardening Guidelines-Attack Surface Reduction|
|**blockallofficeapplicationsfromcreatingchildprocesses**|block|
|**blockadobereaderfromcreatingchildprocesses**|block|


