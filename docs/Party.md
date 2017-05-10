# TitleExpert::Party

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_company** | **BOOLEAN** | Whether this party is a company or an individual | 
**names** | [**Array&lt;OCName&gt;**](OCName.md) | If this is a company there is exactly one name. If this is an individual there is at least one name, where the first is the \&quot;normal\&quot; name and the others are aliases. | 
**addresses** | [**Array&lt;Address&gt;**](Address.md) | Zero or more addresses, where the first (if any) is the \&quot;normal\&quot; address. If there are no addresses this is an empty array rather than null. | 
**company_number** | **String** | If this is a company, the company registration number if known. Null if this is an individual or the company registration number is not known. | [optional] 


