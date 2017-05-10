# TitleExpert::TitleCheckResults

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title_number_requested** | **String** | The title number for whcih the check was requested | 
**data_extract** | [**TitleDataExtract**](TitleDataExtract.md) | Information that has been extracted from the RES return. | 
**checked_at** | **DateTime** | The UTC date/time at which the title check was performed. | 
**issues** | [**Array&lt;Issue&gt;**](Issue.md) | Details of all the issues found. If no issues were found this is an empty array rather than null. | 


