# TitleExpert::OfficialSearchResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**response_common** | [**LrbgResponseCommon**](LrbgResponseCommon.md) | Information about the status of the rqeuest. | 
**title_number** | **String** | The title number of the property. | 
**property_description** | **String** | A description of the property (typically the address) for use by the LR if there is a problem identifying the property from the title number. | 
**search_from** | **DateTime** | If \&quot;Is First Registration\&quot; is false, the date (format yyyy-mm-dd) falling within the defintition of search from date in rule 131 of the Land Registration rules 2003. | [optional] 
**priority_code** | **String** |  | 
**proprietor** | **String** | Name(s) of the registered proprietor(s) as on the register required for OS1 OR the person who is applying for first registration, e.g. the owner (NOT the conveyancer sending the application). Maximum of 100 characters. | 
**applicant_party** | **String** | The full name(s) of the registered proprietor(s) of the registered estate in the title, or the person(s) applying for first registration of the property. If there are more than two, enter the first two only. Maximum of 100 characters. | 
**continue_if_name_mismatch** | **BOOLEAN** | Whether to continue if the proprietor names do not match. | 
**continue_if_developer_title** | **BOOLEAN** | Whether to continue if there is \&quot;developer title\&quot;. | 
**continue_if_pending_searches_of_part** | **BOOLEAN** | Whether to continue if there are any pending searches of part. | 
**alternative_despatch_details** | [**AlternativeDespatchDetails**](AlternativeDespatchDetails.md) | Optional details of where to send any non-electronic results (if they are not to be sent to the default address) | [optional] 
**returned_documents** | [**ReturnedDocuments**](ReturnedDocuments.md) | Details of the documents (if any) returned by the LRBG if the request succeeded. | [optional] 


