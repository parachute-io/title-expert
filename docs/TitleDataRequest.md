# TitleExpert::TitleDataRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**deadline** | **DateTime** | If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final response has not been received from the LRBG before the Deadline is met, the Request will be marked as Expired and made available for immediate return (LRBG costs may still be incurred). | [optional] 
**no_aggregated_issues** | **BOOLEAN** | If true then issues which are normally aggregated will instead be split into separate issues (e.g. instead of one issue such as \&quot;3 restriction(s) found\&quot; there will be three separate \&quot;Restriction found\&quot; issues). | [optional] 
**title_number** | **String** | The title number for which to retrieve info and perform basic checks. | 
**with_plan** | **BOOLEAN** | Whether or not a Title Plan is to be requested from the LR in addition to rthe OC. May be omitted, in which case a plan is not requested. | [optional] 


