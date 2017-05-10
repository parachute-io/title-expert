# TitleExpert::RequestParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**OwnerVerifyName**](OwnerVerifyName.md) | Specifies the name of the entity whose ownership was verified. | 
**title_number** | **String** | The known Title Number of the property whose ownership was verified. Will be null if verification was performed by address search. | [optional] 
**search_address** | [**PropertyAddressSearch**](PropertyAddressSearch.md) | Address search criteria of the property whose ownership was verified. Will be null if verification was performed by known Title Number. | [optional] 


