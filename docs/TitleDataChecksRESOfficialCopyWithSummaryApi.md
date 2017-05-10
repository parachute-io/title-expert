# TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**title_data_acknowledge_dequeued**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_acknowledge_dequeued) | **POST** /api/{clientid}/titlechecks/{requestid}/ack-next-ready | Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
[**title_data_acknowledge_request**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_acknowledge_request) | **POST** /api/{clientid}/titlechecks/{requestid}/ack | Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
[**title_data_create_check_xml_request**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_create_check_xml_request) | **POST** /api/{clientid}/titlechecks/xml | Issue a request for Title Checking of user-supplied Title Data and optional Documents.
[**title_data_create_data_request**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_create_data_request) | **POST** /api/{clientid}/titlechecks | Issue a request for Title Data and perform title checks. This will incur a charge.
[**title_data_dequeue_next_ready_for_ack**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_dequeue_next_ready_for_ack) | **POST** /api/{clientid}/titlechecks/get-next-ready | Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
[**title_data_get_check_results**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_get_check_results) | **GET** /api/{clientid}/titlechecks/{requestid}/checkresults | Get the massaged data extract and list of issues resulting from a Title Data request.
[**title_data_get_document**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_get_document) | **GET** /api/{clientid}/titlechecks/{requestid}/{documentid} | Get one of the documents for a Title Data request.
[**title_data_get_request**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_get_request) | **GET** /api/{clientid}/titlechecks/{requestid} | Get the current status of a Title Data request.
[**title_data_get_res_data**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_get_res_data) | **GET** /api/{clientid}/titlechecks/{requestid}/resdata | (DEPRECATED) Get the raw Registry Extract Service data for a Title Data request as an object.
[**title_data_get_res_document**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_get_res_document) | **GET** /api/{clientid}/titlechecks/{requestid}/resdocument | Get the raw Registry Extract Service data for a Title Data request as an XML document.
[**title_data_search**](TitleDataChecksRESOfficialCopyWithSummaryApi.md#title_data_search) | **GET** /api/{clientid}/titlechecks | Search for Title Data requests meeting the specified criteria.


# **title_data_acknowledge_dequeued**
> title_data_acknowledge_dequeued(clientid, requestid)

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
  api_instance.title_data_acknowledge_dequeued(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_acknowledge_dequeued: #{e}"
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



# **title_data_acknowledge_request**
> title_data_acknowledge_request(clientid, requestid)

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
  api_instance.title_data_acknowledge_request(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_acknowledge_request: #{e}"
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



# **title_data_create_check_xml_request**
> TitleDataResponse title_data_create_check_xml_request(clientid, title_check_request)

Issue a request for Title Checking of user-supplied Title Data and optional Documents.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

title_check_request = TitleExpert::TitleCheckXmlRequest.new # TitleCheckXmlRequest | Details of the Title Check request.


begin
  #Issue a request for Title Checking of user-supplied Title Data and optional Documents.
  result = api_instance.title_data_create_check_xml_request(clientid, title_check_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_create_check_xml_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **title_check_request** | [**TitleCheckXmlRequest**](TitleCheckXmlRequest.md)| Details of the Title Check request. | 

### Return type

[**TitleDataResponse**](TitleDataResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_data_create_data_request**
> TitleDataResponse title_data_create_data_request(clientid, title_data_request)

Issue a request for Title Data and perform title checks. This will incur a charge.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

title_data_request = TitleExpert::TitleDataRequest.new # TitleDataRequest | Details of the Title Data request.


begin
  #Issue a request for Title Data and perform title checks. This will incur a charge.
  result = api_instance.title_data_create_data_request(clientid, title_data_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_create_data_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **title_data_request** | [**TitleDataRequest**](TitleDataRequest.md)| Details of the Title Data request. | 

### Return type

[**TitleDataResponse**](TitleDataResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_data_dequeue_next_ready_for_ack**
> TitleDataResponse title_data_dequeue_next_ready_for_ack(clientid)

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.


begin
  #Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
  result = api_instance.title_data_dequeue_next_ready_for_ack(clientid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_dequeue_next_ready_for_ack: #{e}"
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



# **title_data_get_check_results**
> TitleCheckResults title_data_get_check_results(clientid, requestid)

Get the massaged data extract and list of issues resulting from a Title Data request.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the massaged data extract and list of issues resulting from a Title Data request.
  result = api_instance.title_data_get_check_results(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_get_check_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**TitleCheckResults**](TitleCheckResults.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_data_get_document**
> File title_data_get_document(clientid, requestid, documentid)

Get one of the documents for a Title Data request.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.

documentid = 56 # Integer | The id of the particular document.


begin
  #Get one of the documents for a Title Data request.
  result = api_instance.title_data_get_document(clientid, requestid, documentid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_get_document: #{e}"
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



# **title_data_get_request**
> TitleDataResponse title_data_get_request(clientid, requestid)

Get the current status of a Title Data request.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the current status of a Title Data request.
  result = api_instance.title_data_get_request(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_get_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**TitleDataResponse**](TitleDataResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_data_get_res_data**
> SavedRESData title_data_get_res_data(clientid, requestid)

(DEPRECATED) Get the raw Registry Extract Service data for a Title Data request as an object.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #(DEPRECATED) Get the raw Registry Extract Service data for a Title Data request as an object.
  result = api_instance.title_data_get_res_data(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_get_res_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**SavedRESData**](SavedRESData.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **title_data_get_res_document**
> File title_data_get_res_document(clientid, requestid)

Get the raw Registry Extract Service data for a Title Data request as an XML document.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the raw Registry Extract Service data for a Title Data request as an XML document.
  result = api_instance.title_data_get_res_document(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_get_res_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

**File**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json, text/json



# **title_data_search**
> Array&lt;TitleDataResponse&gt; title_data_search(clientid, opts)

Search for Title Data requests meeting the specified criteria.

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

api_instance = TitleExpert::TitleDataChecksRESOfficialCopyWithSummaryApi.new

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
  #Search for Title Data requests meeting the specified criteria.
  result = api_instance.title_data_search(clientid, opts)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleDataChecksRESOfficialCopyWithSummaryApi->title_data_search: #{e}"
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

[**Array&lt;TitleDataResponse&gt;**](TitleDataResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



