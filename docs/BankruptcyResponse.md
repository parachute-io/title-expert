# TitleExpert::BankruptcyResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**response_common** | [**LrbgResponseCommon**](LrbgResponseCommon.md) | Information about the status of the rqeuest. | 
**names** | [**Array&lt;Name&gt;**](Name.md) | Between 1 and 6 names to be checked | 
**alternative_despatch_details** | [**AlternativeDespatchDetails**](AlternativeDespatchDetails.md) | Optional details of where to send any non-electronic results (if they are not to be sent to the default address) | [optional] 
**returned_documents** | [**ReturnedDocuments**](ReturnedDocuments.md) | Details of the documents (if any) returned by the LRBG if the request succeeded. | [optional] 


