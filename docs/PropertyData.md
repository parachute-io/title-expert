# TitleExpert::PropertyData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title_code** | **String** | The \&quot;class of title code\&quot; from the RES data, e.g. \&quot;Qualified Freehold\&quot; | 
**_class** | **String** | The class of title, e.g. Absoulte (derived from TitleCode) | 
**tenure** | **String** | The title tenure, e.g. Leasehold (derived from TitleCode) | 
**commonhold** | **BOOLEAN** | Is this property Commonhold? | 
**addresses** | [**Array&lt;Address&gt;**](Address.md) | 1 or more addresses for the property | 
**is_not_main_title** | **BOOLEAN** | True if ALL the property addresses are definitely something other than the main part of the property (e.g. a garage or additional land). A value of false DOES NOT guarantee that this title is for the main part of the property. | 
**is_scottish** | **BOOLEAN** | True if ANY of the property addresses is definitely known to be in Scotland. False if ALL the property addresses are definitely known not to be in Scotland. Null iin all other cases (typically those where a postcode is missing). | [optional] 
**purchase_register_entry_date** | **DateTime** | The registration date of the \&quot;price paid\&quot; register entry, if there is one. | [optional] 
**purchase_prices** | **Array&lt;Float&gt;** | The values from the price infills (if any) of the \&quot;price paid\&quot; register entry, if there is one. Typically there is either a single value or two values, where two values indicates a range of prices. Null unless there is at least one price. | [optional] 
**purchase_dates** | **Array&lt;DateTime&gt;** | The values from the date infills (if any) of the \&quot;price paid\&quot; register entry, if there is one. Null unless there is at least one date. | [optional] 


