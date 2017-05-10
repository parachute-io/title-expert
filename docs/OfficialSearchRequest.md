# TitleExpert::OfficialSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**deadline** | **DateTime** | If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final response has not been received from the LRBG before the Deadline is met, the Request will be marked as Expired and made available for immediate return (LRBG costs may still be incurred). | [optional] 
**title_number** | **String** | Mandatory. The title number of the property. | 
**property_description** | **String** | Mandatory. A description of the property (typically the address) for use by the LR if there is a problem identifying the property from the title number. Maximum of 130 characters. | 
**search_from** | **DateTime** | Mandatory unless \&quot;Is First Registration\&quot; is true. The date (format yyyy-mm-dd) falling within the defintition of search from date in rule 131 of the Land Registration rules 2003. | [optional] 
**priority_code** | **String** | Mandatory. | 
**proprietor** | **String** | Mandatory. Name(s) of the registered proprietor(s) as on the register required for OS1 OR the person who is applying for first registration, e.g. the owner (NOT the conveyancer sending the application). Maximum of 100 characters. | 
**applicant_party** | **String** | Mandatory. The full name(s) of the registered proprietor(s) of the registered estate in the title, or the person(s) applying for first registration of the property. If there are more than two, enter the first two only. Maximum of 100 characters. | 
**continue_if_name_mismatch** | **BOOLEAN** | Mandatory. Whether to continue if the proprietor names do not match. | 
**continue_if_developer_title** | **BOOLEAN** | Mandatory. Whether to continue if there is \&quot;developer title\&quot;. | 
**continue_if_pending_searches_of_part** | **BOOLEAN** | Mandatory. Whether to continue if there are any pending searches of part. | 
**alternative_despatch_details** | [**AlternativeDespatchDetails**](AlternativeDespatchDetails.md) | Optional details of where to send any non-electronic results (if they are not to be sent to the default address) | [optional] 


