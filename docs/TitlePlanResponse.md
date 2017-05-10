# TitleExpert::TitlePlanResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**response_common** | [**LrbgResponseCommon**](LrbgResponseCommon.md) | Information about the status of the rqeuest. | 
**title_number** | **String** | The title number for which documents are required. | 
**property_description** | **String** | A description of the property (typically the address) for use by the LR if there is a problem identifying the property from the title number. | 
**alternative_despatch_details** | [**AlternativeDespatchDetails**](AlternativeDespatchDetails.md) | Optional details of where to send any non-electronic results (if they are not to be sent to the default address) | [optional] 
**returned_documents** | [**ReturnedDocuments**](ReturnedDocuments.md) | Details of the documents (if any) returned by the LRBG if the request succeeded. Note that if more than one document was requested then there is no automatic method for matching the returned documents with the requested documents, and manual inspection will probably be needed. | [optional] 


