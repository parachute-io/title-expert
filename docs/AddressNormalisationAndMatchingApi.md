# TitleExpert::AddressNormalisationAndMatchingApi

All URIs are relative to *https://titleexpert.co.uk*

Method | HTTP request | Description
------------- | ------------- | -------------
[**address_match_match**](AddressNormalisationAndMatchingApi.md#address_match_match) | **POST** /api/{clientid}/addressmatch/match | Compares two addresses on a \&quot;logical first line and postcode\&quot; basis.
[**address_match_normalise**](AddressNormalisationAndMatchingApi.md#address_match_normalise) | **POST** /api/{clientid}/addressmatch/normalise | Normalise an address by concatenating lines, singling multiple spaces, removing punctuation and doing things like replacing \&quot;Road\&quot; by \&quot;Rd\&quot;.


# **address_match_match**
> AddressMatchResponse address_match_match(clientid, addresses)

Compares two addresses on a \"logical first line and postcode\" basis.

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

api_instance = TitleExpert::AddressNormalisationAndMatchingApi.new

clientid = "clientid_example" # String | Your client id.

addresses = TitleExpert::AddressMatchRequest.new # AddressMatchRequest | The addresses to be compared.


begin
  #Compares two addresses on a \"logical first line and postcode\" basis.
  result = api_instance.address_match_match(clientid, addresses)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling AddressNormalisationAndMatchingApi->address_match_match: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **addresses** | [**AddressMatchRequest**](AddressMatchRequest.md)| The addresses to be compared. | 

### Return type

[**AddressMatchResponse**](AddressMatchResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_match_normalise**
> Address address_match_normalise(clientid, address)

Normalise an address by concatenating lines, singling multiple spaces, removing punctuation and doing things like replacing \"Road\" by \"Rd\".

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

api_instance = TitleExpert::AddressNormalisationAndMatchingApi.new

clientid = "clientid_example" # String | Your client id.

address = TitleExpert::RawAddress.new # RawAddress | The address to be normalised.


begin
  #Normalise an address by concatenating lines, singling multiple spaces, removing punctuation and doing things like replacing \"Road\" by \"Rd\".
  result = api_instance.address_match_normalise(clientid, address)
  p result
rescue TitleExpert::ApiError => e
  puts "Exception when calling AddressNormalisationAndMatchingApi->address_match_normalise: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| Your client id. | 
 **address** | [**RawAddress**](RawAddress.md)| The address to be normalised. | 

### Return type

[**Address**](Address.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



