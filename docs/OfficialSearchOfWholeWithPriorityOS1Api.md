# TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_of_whole_acknowledge_dequeued**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_acknowledge_dequeued) | **POST** /api/{clientid}/searchesofwhole/{requestid}/ack-next-ready | Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
[**search_of_whole_acknowledge_request**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_acknowledge_request) | **POST** /api/{clientid}/searchesofwhole/{requestid}/ack | Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
[**search_of_whole_create_request**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_create_request) | **POST** /api/{clientid}/searchesofwhole | Issue an OS1 request, Official Search of Whole with Priority. This will incur a charge.
[**search_of_whole_dequeue_next_ready_for_ack**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_dequeue_next_ready_for_ack) | **POST** /api/{clientid}/searchesofwhole/get-next-ready | Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
[**search_of_whole_get_document**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_get_document) | **GET** /api/{clientid}/searchesofwhole/{requestid}/{documentid} | Get one of the documents returned by an Official Search request.
[**search_of_whole_get_request**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_get_request) | **GET** /api/{clientid}/searchesofwhole/{requestid} | Get the current status of an Official Search request.
[**search_of_whole_search**](OfficialSearchOfWholeWithPriorityOS1Api.md#search_of_whole_search) | **GET** /api/{clientid}/searchesofwhole | Search for Official Search requests meeting the specified criteria.


# **search_of_whole_acknowledge_dequeued**
> search_of_whole_acknowledge_dequeued(clientid, requestid)

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
  api_instance.search_of_whole_acknowledge_dequeued(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_acknowledge_dequeued: #{e}"
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



# **search_of_whole_acknowledge_request**
> search_of_whole_acknowledge_request(clientid, requestid)

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
  api_instance.search_of_whole_acknowledge_request(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_acknowledge_request: #{e}"
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



# **search_of_whole_create_request**
> OfficialSearchResponse search_of_whole_create_request(clientid, official_search_request)

Issue an OS1 request, Official Search of Whole with Priority. This will incur a charge.

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.

official_search_request = TitleExpert::OfficialSearchRequest.new # OfficialSearchRequest | Details of the Official Search being requested.


begin
  #Issue an OS1 request, Official Search of Whole with Priority. This will incur a charge.
  result = api_instance.search_of_whole_create_request(clientid, official_search_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_create_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **official_search_request** | [**OfficialSearchRequest**](OfficialSearchRequest.md)| Details of the Official Search being requested. | 

### Return type

[**OfficialSearchResponse**](OfficialSearchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **search_of_whole_dequeue_next_ready_for_ack**
> TitleDataResponse search_of_whole_dequeue_next_ready_for_ack(clientid)

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.


begin
  #Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
  result = api_instance.search_of_whole_dequeue_next_ready_for_ack(clientid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_dequeue_next_ready_for_ack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 

### Return type

[**TitleDataResponse**](TitleDataResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **search_of_whole_get_document**
> File search_of_whole_get_document(clientid, requestid, documentid)

Get one of the documents returned by an Official Search request.

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.

documentid = 56 # Integer | The id of the particular document.


begin
  #Get one of the documents returned by an Official Search request.
  result = api_instance.search_of_whole_get_document(clientid, requestid, documentid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 
 **documentid** | **Integer**| The id of the particular document. | 

### Return type

**File**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json, text/json



# **search_of_whole_get_request**
> OfficialSearchResponse search_of_whole_get_request(clientid, requestid)

Get the current status of an Official Search request.

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the current status of an Official Search request.
  result = api_instance.search_of_whole_get_request(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_get_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**OfficialSearchResponse**](OfficialSearchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **search_of_whole_search**
> Array&lt;OfficialSearchResponse&gt; search_of_whole_search(clientid, opts)

Search for Official Search requests meeting the specified criteria.

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

api_instance = TitleExpert::OfficialSearchOfWholeWithPriorityOS1Api.new

clientid = "clientid_example" # String | Your client id.

opts = { 
  status: "status_example", # String | Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert.
  statussince: "statussince_example", # String | Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss).
  acknowledged: "acknowledged_example", # String | Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged.
  clientref: "clientref_example", # String | Optional reference provided when request was submitted.
  title: "title_example", # String | Optional title number.
  order: "order_example", # String | Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst.
  maxentries: "maxentries_example" # String | Optional. Limits the number of requests returned.
}

begin
  #Search for Official Search requests meeting the specified criteria.
  result = api_instance.search_of_whole_search(clientid, opts)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OfficialSearchOfWholeWithPriorityOS1Api->search_of_whole_search: #{e}"
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
 **title** | **String**| Optional title number. | [optional] 
 **order** | **String**| Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst. | [optional] 
 **maxentries** | **String**| Optional. Limits the number of requests returned. | [optional] 

### Return type

[**Array&lt;OfficialSearchResponse&gt;**](OfficialSearchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



