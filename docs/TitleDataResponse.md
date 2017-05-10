# TitleExpert::TitleDataResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**response_common** | [**LrbgResponseCommon**](LrbgResponseCommon.md) | Information about the status of the rqeuest. | 
**no_aggregated_issues** | **BOOLEAN** | If true then issues which are normally aggregated will instead be split into separate issues (e.g. instead of one issue such as \&quot;3 restriction(s) found\&quot; there will be three separate \&quot;Restriction found\&quot; issues). | [optional] 
**title_number** | **String** | The title number for which to retrieve info and perform basic checks. | 
**with_plan** | **BOOLEAN** | Whether or not a Title Plan was to be requested from the LR in addition to the OC. | 
**returned_documents** | [**ReturnedDocuments**](ReturnedDocuments.md) | Details of the documents (if any) returned by the LRBG if the request succeeded. If a Title Plan was requested then the OC will typically be the first document and the Title Plan will be the second. This field is always present, even if no documents were returned. | [optional] 
**res_document_uri** | **String** | The URI to access the RES XML data (as a document) returned by the LRBG if the request succeeded. Null if the data is not available. | [optional] 
**res_data_uri** | **String** | (DEPRECATED) The URI to access the RES XML data (as an object) returned by the LRBG if the request succeeded. Null if the data is not available. | [optional] 
**title_check_results_uri** | **String** | The URL to access the results if the request succeeded. Null if the data is not available. | [optional] 


