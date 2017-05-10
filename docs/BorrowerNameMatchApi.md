# TitleExpert::BorrowerNameMatchApi

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**borrower_name_match_acknowledge_dequeued**](BorrowerNameMatchApi.md#borrower_name_match_acknowledge_dequeued) | **POST** /api/{clientid}/customcheck/BorrowerNameMatch/{requestid}/ack-next-ready | Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
[**borrower_name_match_acknowledge_request**](BorrowerNameMatchApi.md#borrower_name_match_acknowledge_request) | **POST** /api/{clientid}/customcheck/BorrowerNameMatch/{requestid}/ack | Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
[**borrower_name_match_create_request**](BorrowerNameMatchApi.md#borrower_name_match_create_request) | **POST** /api/{clientid}/customcheck/BorrowerNameMatch | Check the supplied set of borrower names against the registered proprietors in the identified TitleData request.
[**borrower_name_match_dequeue_next_ready_for_ack**](BorrowerNameMatchApi.md#borrower_name_match_dequeue_next_ready_for_ack) | **POST** /api/{clientid}/customcheck/BorrowerNameMatch/get-next-ready | Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
[**borrower_name_match_get_request**](BorrowerNameMatchApi.md#borrower_name_match_get_request) | **GET** /api/{clientid}/customcheck/BorrowerNameMatch/{requestid} | Retrieve the results of a Borrower Name Match.
[**borrower_name_match_search_requests**](BorrowerNameMatchApi.md#borrower_name_match_search_requests) | **GET** /api/{clientid}/customcheck/BorrowerNameMatch | Search for Borrower Name Match requests meeting the specified criteria.


# **borrower_name_match_acknowledge_dequeued**
> borrower_name_match_acknowledge_dequeued(clientid, requestid)

Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.

### Example
```ruby
# load the gem
require 'title_expert'
# setup authorization
TitleExpert.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TitleExpert::BorrowerNameMatchApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
  api_instance.borrower_name_match_acknowledge_dequeued(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling BorrowerNameMatchApi->borrower_name_match_acknowledge_dequeued: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **borrower_name_match_acknowledge_request**
> borrower_name_match_acknowledge_request(clientid, requestid)

Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.

### Example
```ruby
# load the gem
require 'title_expert'
# setup authorization
TitleExpert.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TitleExpert::BorrowerNameMatchApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
  api_instance.borrower_name_match_acknowledge_request(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling BorrowerNameMatchApi->borrower_name_match_acknowledge_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **borrower_name_match_create_request**
> BorrowerNameMatchResponse borrower_name_match_create_request(clientid, borrower_name_match_request)

Check the supplied set of borrower names against the registered proprietors in the identified TitleData request.

### Example
```ruby
# load the gem
require 'title_expert'
# setup authorization
TitleExpert.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TitleExpert::BorrowerNameMatchApi.new

clientid = "clientid_example" # String | Your client id.

borrower_name_match_request = TitleExpert::BorrowerNameMatchRequest.new # BorrowerNameMatchRequest | Details of the check to be performed.


begin
  #Check the supplied set of borrower names against the registered proprietors in the identified TitleData request.
  result = api_instance.borrower_name_match_create_request(clientid, borrower_name_match_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling BorrowerNameMatchApi->borrower_name_match_create_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **borrower_name_match_request** | [**BorrowerNameMatchRequest**](BorrowerNameMatchRequest.md)| Details of the check to be performed. | 

### Return type

[**BorrowerNameMatchResponse**](BorrowerNameMatchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **borrower_name_match_dequeue_next_ready_for_ack**
> BorrowerNameMatchResponse borrower_name_match_dequeue_next_ready_for_ack(clientid)

Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.

### Example
```ruby
# load the gem
require 'title_expert'
# setup authorization
TitleExpert.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TitleExpert::BorrowerNameMatchApi.new

clientid = "clientid_example" # String | Your client id.


begin
  #Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
  result = api_instance.borrower_name_match_dequeue_next_ready_for_ack(clientid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling BorrowerNameMatchApi->borrower_name_match_dequeue_next_ready_for_ack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 

### Return type

[**BorrowerNameMatchResponse**](BorrowerNameMatchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **borrower_name_match_get_request**
> BorrowerNameMatchResponse borrower_name_match_get_request(clientid, requestid)

Retrieve the results of a Borrower Name Match.

### Example
```ruby
# load the gem
require 'title_expert'
# setup authorization
TitleExpert.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TitleExpert::BorrowerNameMatchApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the check whose status/results are to be retrieved.


begin
  #Retrieve the results of a Borrower Name Match.
  result = api_instance.borrower_name_match_get_request(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling BorrowerNameMatchApi->borrower_name_match_get_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the check whose status/results are to be retrieved. | 

### Return type

[**BorrowerNameMatchResponse**](BorrowerNameMatchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **borrower_name_match_search_requests**
> Array&lt;BorrowerNameMatchResponse&gt; borrower_name_match_search_requests(clientid, opts)

Search for Borrower Name Match requests meeting the specified criteria.

### Example
```ruby
# load the gem
require 'title_expert'
# setup authorization
TitleExpert.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TitleExpert::BorrowerNameMatchApi.new

clientid = "clientid_example" # String | Your client id.

opts = { 
  status: "status_example", # String | Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert.
  statussince: "statussince_example", # String | Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss).
  acknowledged: "acknowledged_example", # String | Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged.
  clientref: "clientref_example", # String | Optional reference provided when request was submitted.
  titledataid: "titledataid_example", # String | Optional id of the TitleData request that was used as the source data for Custom Check/s.
  order: "order_example", # String | Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst.
  maxentries: "maxentries_example" # String | Optional. Limits the number of requests returned.
}

begin
  #Search for Borrower Name Match requests meeting the specified criteria.
  result = api_instance.borrower_name_match_search_requests(clientid, opts)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling BorrowerNameMatchApi->borrower_name_match_search_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **status** | **String**| Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert. | [optional] 
 **statussince** | **String**| Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss). | [optional] 
 **acknowledged** | **String**| Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged. | [optional] 
 **clientref** | **String**| Optional reference provided when request was submitted. | [optional] 
 **titledataid** | **String**| Optional id of the TitleData request that was used as the source data for Custom Check/s. | [optional] 
 **order** | **String**| Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst. | [optional] 
 **maxentries** | **String**| Optional. Limits the number of requests returned. | [optional] 

### Return type

[**Array&lt;BorrowerNameMatchResponse&gt;**](BorrowerNameMatchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



