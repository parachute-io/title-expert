# TitleExpert::OnlineOwnershipVerificationOOVApi

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ownership_verification_acknowledge_dequeued**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_acknowledge_dequeued) | **POST** /api/{clientid}/ownershipverify/{requestid}/ack-next-ready | Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
[**ownership_verification_acknowledge_request**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_acknowledge_request) | **POST** /api/{clientid}/ownershipverify/{requestid}/ack | Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
[**ownership_verification_dequeue_next_ready_for_ack**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_dequeue_next_ready_for_ack) | **POST** /api/{clientid}/ownershipverify/get-next-ready | Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
[**ownership_verification_get_response**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_get_response) | **GET** /api/{clientid}/ownershipverify/{requestid} | Get the current status of an Online Ownership Verification request.
[**ownership_verification_get_results**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_get_results) | **GET** /api/{clientid}/ownershipverify/{requestid}/results | Get the results of a complete Online Ownership Verification request.
[**ownership_verification_search_requests**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_search_requests) | **GET** /api/{clientid}/ownershipverify | Search for Online Ownership Verification requests meeting the specified criteria.
[**ownership_verification_verify_by_address**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_verify_by_address) | **POST** /api/{clientid}/ownershipverify/address | Issue a request for Online Ownership Verification against a property address. This will incur a charge.
[**ownership_verification_verify_by_title**](OnlineOwnershipVerificationOOVApi.md#ownership_verification_verify_by_title) | **POST** /api/{clientid}/ownershipverify/title | Issue a request for Online Ownership Verification against a known Title Number. This will incur a charge.


# **ownership_verification_acknowledge_dequeued**
> ownership_verification_acknowledge_dequeued(clientid, requestid)

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
  api_instance.ownership_verification_acknowledge_dequeued(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_acknowledge_dequeued: #{e}"
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



# **ownership_verification_acknowledge_request**
> ownership_verification_acknowledge_request(clientid, requestid)

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
  api_instance.ownership_verification_acknowledge_request(clientid, requestid)
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_acknowledge_request: #{e}"
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



# **ownership_verification_dequeue_next_ready_for_ack**
> TitleDataResponse ownership_verification_dequeue_next_ready_for_ack(clientid)

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.


begin
  #Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
  result = api_instance.ownership_verification_dequeue_next_ready_for_ack(clientid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_dequeue_next_ready_for_ack: #{e}"
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



# **ownership_verification_get_response**
> OwnerVerifyResponse ownership_verification_get_response(clientid, requestid)

Get the current status of an Online Ownership Verification request.

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the current status of an Online Ownership Verification request.
  result = api_instance.ownership_verification_get_response(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_get_response: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**OwnerVerifyResponse**](OwnerVerifyResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **ownership_verification_get_results**
> OwnerVerifyResult ownership_verification_get_results(clientid, requestid)

Get the results of a complete Online Ownership Verification request.

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.

requestid = "requestid_example" # String | The id of the request.


begin
  #Get the results of a complete Online Ownership Verification request.
  result = api_instance.ownership_verification_get_results(clientid, requestid)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_get_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **requestid** | **String**| The id of the request. | 

### Return type

[**OwnerVerifyResult**](OwnerVerifyResult.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **ownership_verification_search_requests**
> Array&lt;OwnerVerifyResponse&gt; ownership_verification_search_requests(clientid, opts)

Search for Online Ownership Verification requests meeting the specified criteria.

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

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
  #Search for Online Ownership Verification requests meeting the specified criteria.
  result = api_instance.ownership_verification_search_requests(clientid, opts)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_search_requests: #{e}"
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

[**Array&lt;OwnerVerifyResponse&gt;**](OwnerVerifyResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **ownership_verification_verify_by_address**
> OwnerVerifyResponse ownership_verification_verify_by_address(clientid, verify_request)

Issue a request for Online Ownership Verification against a property address. This will incur a charge.

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.

verify_request = TitleExpert::OwnerVerifyByAddressRequest.new # OwnerVerifyByAddressRequest | Details of the Ownership Verification request.


begin
  #Issue a request for Online Ownership Verification against a property address. This will incur a charge.
  result = api_instance.ownership_verification_verify_by_address(clientid, verify_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_verify_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **verify_request** | [**OwnerVerifyByAddressRequest**](OwnerVerifyByAddressRequest.md)| Details of the Ownership Verification request. | 

### Return type

[**OwnerVerifyResponse**](OwnerVerifyResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **ownership_verification_verify_by_title**
> OwnerVerifyResponse ownership_verification_verify_by_title(clientid, verify_request)

Issue a request for Online Ownership Verification against a known Title Number. This will incur a charge.

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

api_instance = TitleExpert::OnlineOwnershipVerificationOOVApi.new

clientid = "clientid_example" # String | Your client id.

verify_request = TitleExpert::OwnerVerifyByTitleRequest.new # OwnerVerifyByTitleRequest | Details of the Ownership Verification request.


begin
  #Issue a request for Online Ownership Verification against a known Title Number. This will incur a charge.
  result = api_instance.ownership_verification_verify_by_title(clientid, verify_request)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling OnlineOwnershipVerificationOOVApi->ownership_verification_verify_by_title: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **verify_request** | [**OwnerVerifyByTitleRequest**](OwnerVerifyByTitleRequest.md)| Details of the Ownership Verification request. | 

### Return type

[**OwnerVerifyResponse**](OwnerVerifyResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



