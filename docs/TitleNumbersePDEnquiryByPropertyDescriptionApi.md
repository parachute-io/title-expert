# TitleExpert::TitleNumbersePDEnquiryByPropertyDescriptionApi

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**title_numbers_search**](TitleNumbersePDEnquiryByPropertyDescriptionApi.md#title_numbers_search) | **GET** /api/{clientid}/titlenumbers | Search for the title number(s) for an address (ePD, Enquiry by Property Description).


# **title_numbers_search**
> TitleNumbersResult title_numbers_search(clientid, opts)

Search for the title number(s) for an address (ePD, Enquiry by Property Description).

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

api_instance = TitleExpert::TitleNumbersePDEnquiryByPropertyDescriptionApi.new

clientid = "clientid_example" # String | Your client id.

opts = { 
  bname: "bname_example", # String | Building name (max 50 chars). Always specify at least one of this and bno.
  bno: "bno_example", # String | Building number (max 5 chars). Always specify at least one of this and bname.
  street: "street_example", # String | Street (max 80 chars). If postcode is not specified then specify both street and city.
  city: "city_example", # String | Town or city (max 35 chars). If postcode is not specified then specify both street and city.
  postcode: "postcode_example", # String | Full postcode, including a space separating the two parts.
  tenure: "tenure_example" # String | Optional comma-separated list of tenure types to filter results. Values allowed are: other, freehold, leasehold, commonhold, feuhold, mixed, unknown, unavailable, caution_against_first_registration, rent_charge, franchise, profit_a_prendre_in_gross, manor.
}

begin
  #Search for the title number(s) for an address (ePD, Enquiry by Property Description).
  result = api_instance.title_numbers_search(clientid, opts)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling TitleNumbersePDEnquiryByPropertyDescriptionApi->title_numbers_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **bname** | **String**| Building name (max 50 chars). Always specify at least one of this and bno. | [optional] 
 **bno** | **String**| Building number (max 5 chars). Always specify at least one of this and bname. | [optional] 
 **street** | **String**| Street (max 80 chars). If postcode is not specified then specify both street and city. | [optional] 
 **city** | **String**| Town or city (max 35 chars). If postcode is not specified then specify both street and city. | [optional] 
 **postcode** | **String**| Full postcode, including a space separating the two parts. | [optional] 
 **tenure** | **String**| Optional comma-separated list of tenure types to filter results. Values allowed are: other, freehold, leasehold, commonhold, feuhold, mixed, unknown, unavailable, caution_against_first_registration, rent_charge, franchise, profit_a_prendre_in_gross, manor. | [optional] 

### Return type

[**TitleNumbersResult**](TitleNumbersResult.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



