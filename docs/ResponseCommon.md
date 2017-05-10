# TitleExpert::ResponseCommon

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The request id, allocated when the request was accepted by the system. | 
**response_uri** | **String** | The URL that can be used to retrieve the results of the request. | 
**reference** | **String** | The reference string provided at the time the Request was constructed. | [optional] 
**deadline** | **DateTime** | The date/time provided for the Request, by which a final result must be known. | [optional] 
**status** | **String** | One of: Pending: Request has been submitted to the system for processing; final result is not yet known or ready. Complete: Processing for the Request has completed successfully and the results are available. Failed: Processing for the Request has completed but the Request was not successful. Cancelled: The Request was cancelled before processing was started or completed. Expired: The Request had a Deadline set and it was met before the Request finished. | 
**status_last_changed** | **DateTime** | The UTC date and time when the Status last changed (i.e. when the request was issued if the status is Pending, or when the result became known otherwise). | 
**acknowledge_uri** | **String** | If the status is Complete or Failed, the URI that can be used to acknowledge receipt of the results of this request. Null if the status is Pending. | [optional] 
**acknowledged** | **BOOLEAN** | Whether or not receipt of the results of this request have been explicitly acknowledged. | 


