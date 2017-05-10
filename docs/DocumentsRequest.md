# TitleExpert::DocumentsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**required_documents** | [**Array&lt;OC2DocumentSpec&gt;**](OC2DocumentSpec.md) | Mandatory. Details of 1 or more documents required. | 
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**deadline** | **DateTime** | If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final response has not been received from the LRBG before the Deadline is met, the Request will be marked as Expired and made available for immediate return (LRBG costs may still be incurred). | [optional] 
**title_number** | **String** | Mandatory. The title number for which documents are required. | 
**property_description** | **String** | Mandatory. A description of the property (typically the address) for use by the LR if there is a problem identifying the property from the title number. Maximum of 130 characters. | 
**alternative_despatch_details** | [**AlternativeDespatchDetails**](AlternativeDespatchDetails.md) | Optional details of where to send any non-electronic results (if they are not to be sent to the default address) | [optional] 


