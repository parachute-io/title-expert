# TitleExpert::Address

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lines** | **Array&lt;String&gt;** | Individual lines of the address excluding the postcode and with blank/empty lines removed. If there are no lines then this is an empty array rather than null. | 
**postcode** | **String** |  | [optional] 
**single_line** | **String** | A single-line version of the address obtained by concatenating all the lines and the postcode using space (not comma) as a separator. | 
**normalised** | **String** | A normalised version of the address (without the postcode) useful for comparing addresses while ignoring insignificant differences, such as using \&quot;Rd\&quot;/\&quot;Road\&quot;. | 
**normalised_no_county** | **String** | A normalised version of the address but with the county (if any) and postcode removed (useful for comparing addresses where counties are sometimes omitted). | 
**logical_first_line** | **String** | A normalised version of the \&quot;first line\&quot; of the address, where the \&quot;first line\&quot; is basically the property name and/or number and the street, which is NOT necessarily the same as Lines[0]. Useful for comparing addresses based on \&quot;first line and postcode\&quot;. The algorithm used to extract the \&quot;first line\&quot; uses various heuristics and is not guaranteed to always give a correct result, but it errs in including too much of the address rather than too little. | 


