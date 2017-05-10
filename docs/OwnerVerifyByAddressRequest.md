# TitleExpert::OwnerVerifyByAddressRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**search_address** | [**PropertyAddressSearch**](PropertyAddressSearch.md) | Address search criteria of the property whose ownership is to be verified. | 
**reference** | **String** | Optional string (maximum of 128 characters) for use by the client to identify this request. This will be truncated to 25 characters when sent to the LRBG. | [optional] 
**deadline** | **DateTime** | If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final response has not been received from the LRBG before the Deadline is met, the Request will be marked as Expired and made available for immediate return (LRBG costs may still be incurred). | [optional] 
**name** | [**OwnerVerifyName**](OwnerVerifyName.md) | Specify the name of the entity whose ownership is to be verified. | 


