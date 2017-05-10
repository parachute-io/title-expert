# TitleExpert::TitlePlanOC1Api

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**title_plan_acknowledge_dequeued**](TitlePlanOC1Api.md#title_plan_acknowledge_dequeued) | **POST** /api/{clientid}/titleplan/{requestid}/ack-next-ready | Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
[**title_plan_acknowledge_request**](TitlePlanOC1Api.md#title_plan_acknowledge_request) | **POST** /api/{clientid}/titleplan/{requestid}/ack | Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
[**title_plan_dequeue_next_ready_for_ack**](TitlePlanOC1Api.md#title_plan_dequeue_next_ready_for_ack) | **POST** /api/{clientid}/titleplan/get-next-ready | Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
[**title_plan_get_document**](TitlePlanOC1Api.md#title_plan_get_document) | **GET** /api/{clientid}/titleplan/{requestid}/{documentid} | Gets the Title Plan PDF.
[**title_plan_get_result**](TitlePlanOC1Api.md#title_plan_get_result) | **GET** /api/{clientid}/titleplan/{requestid} | Get the current status of a Title Plan request.
[**title_plan_search**](TitlePlanOC1Api.md#title_plan_search) | **GET** /api/{clientid}/titleplan | Search for Title Plan requests meeting the specified criteria.
[**title_plan_submit_request**](TitlePlanOC1Api.md#title_plan_submit_request) | **POST** /api/{clientid}/titleplan | Issue a request for a Title Plan (OC1). Will continue if applications are pending against the Title (returning back-dated) or if closed and continued (under the new Title number). This will incur a charge.


# **title_plan_acknowledge_dequeued**
> title_plan_acknowledge_dequeued(clientid, requestid)

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
  api_instance.title_plan_acknowledge_dequeued(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_acknowledge_dequeued: #{e}"
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



# **title_plan_acknowledge_request**
> title_plan_acknowledge_request(clientid, requestid)

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
  api_instance.title_plan_acknowledge_request(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_acknowledge_request: #{e}"
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



# **title_plan_dequeue_next_ready_for_ack**
> TitleDataResponse title_plan_dequeue_next_ready_for_ack(clientid)

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.


begin
  #Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
  result = api_instance.title_plan_dequeue_next_ready_for_ack(clientid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_dequeue_next_ready_for_ack: #{e}"
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



# **title_plan_get_document**
> File title_plan_get_document(clientid, requestid, documentid)

Gets the Title Plan PDF.

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.

documentid = 56 # Integer | The id of the particular document.


begin
  #Gets the Title Plan PDF.
  result = api_instance.title_plan_get_document(clientid, requestid, documentid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_get_document: #{e}"
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



# **title_plan_get_result**
> TitlePlanResponse title_plan_get_result(clientid, requestid)

Get the current status of a Title Plan request.

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the current status of a Title Plan request.
  result = api_instance.title_plan_get_result(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_get_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**TitlePlanResponse**](TitlePlanResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_plan_search**
> Array&lt;TitlePlanResponse&gt; title_plan_search(clientid, opts)

Search for Title Plan requests meeting the specified criteria.

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.

opts = { 
  status: "status_example", # String | Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert.
  statussince: "statussince_example", # String | Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss).
  acknowledged: "acknowledged_example", # String | Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged.
  clientref: "clientref_example", # String | Optional client reference.
  title: "title_example", # String | Optional title number.
  order: "order_example", # String | Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst.
  maxentries: "maxentries_example" # String | Optional. Limits the number of requests returned.
}

begin
  #Search for Title Plan requests meeting the specified criteria.
  result = api_instance.title_plan_search(clientid, opts)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **status** | **String**| Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert. | [optional] 
 **statussince** | **String**| Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss). | [optional] 
 **acknowledged** | **String**| Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged. | [optional] 
 **clientref** | **String**| Optional client reference. | [optional] 
 **title** | **String**| Optional title number. | [optional] 
 **order** | **String**| Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst. | [optional] 
 **maxentries** | **String**| Optional. Limits the number of requests returned. | [optional] 

### Return type

[**Array&lt;TitlePlanResponse&gt;**](TitlePlanResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_plan_submit_request**
> TitlePlanResponse title_plan_submit_request(clientid, title_plan_request)

Issue a request for a Title Plan (OC1). Will continue if applications are pending against the Title (returning back-dated) or if closed and continued (under the new Title number). This will incur a charge.

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

api_instance = TitleExpert::TitlePlanOC1Api.new

clientid = "clientid_example" # String | Your client id.

title_plan_request = TitleExpert::TitlePlanRequest.new # TitlePlanRequest | Information identifying the plan being requested.


begin
  #Issue a request for a Title Plan (OC1). Will continue if applications are pending against the Title (returning back-dated) or if closed and continued (under the new Title number). This will incur a charge.
  result = api_instance.title_plan_submit_request(clientid, title_plan_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitlePlanOC1Api->title_plan_submit_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **title_plan_request** | [**TitlePlanRequest**](TitlePlanRequest.md)| Information identifying the plan being requested. | 

### Return type

[**TitlePlanResponse**](TitlePlanResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



