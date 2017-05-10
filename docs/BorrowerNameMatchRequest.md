# TitleExpert::BorrowerNameMatchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**borrowers** | [**Array&lt;Borrower&gt;**](Borrower.md) | Between 1 and 4 borrowers, whose names are to be compared with the names of the registered proprietors. | 
**min_confidence** | **Integer** | If a fuzzy name comparison between a borrower and a proprietor has a confidence greater than or equal to this value then it will be treated as a possible fuzzy match. If not specified a default value is used. | [optional] 
**client_ref** | **String** | Optional string (maximum of 128 characters) for use by the client to identify this request. | [optional] 
**deadline** | **DateTime** | If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final result is not ready before the Deadline is met, the Request will be marked as Expired and made available for immediate return (costs may still be incurred). | [optional] 
**title_data_id** | **String** | The id of the Title Data request, against whose data the Custom Check will be performed. | 


