# TitleExpert::Lease

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parties** | [**Array&lt;Party&gt;**](Party.md) | Two or more parties to the lease. | 
**lease_term_text** | **String** | The text containing details of the lease term. | 
**unable_to_fully_parse_term** | **BOOLEAN** | If true then the lease term could not be fully parsed. Some information may have been extracted, but the term should be checked manually before relying on any such information. | 
**term_in_years** | **Integer** | The lease term in years, rounded down if is not a whole number of years, or null if it cannot be determined. | [optional] 
**term_start_date** | **DateTime** | The lease start date, or null if it cannot be determined. | [optional] 
**term_end_date** | **DateTime** | The lease end date (i.e. the last date on which the lease is valid), or null if it cannot be determined. The date 31/12/9998 is a special value indicating that the lease end date is outside the range of a DateTime value (because the lease duration is a very long period, e.g. 10,000 years). | [optional] 
**years_remaining** | **Integer** | Number of whole years remaining on the lease at the date the Title Check was performed, or null it it cannot be determined. | [optional] 
**register_entry** | [**RegisterEntry**](RegisterEntry.md) | The register entry containing the lease details. | 


