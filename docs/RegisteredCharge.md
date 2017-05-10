# TitleExpert::RegisteredCharge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_entry** | [**RegisterEntry**](RegisterEntry.md) | The register entry for the charge. Will not be null. | 
**charge_date** | **DateTime** | The charge date. Can be null. | [optional] 
**proprietor_entry** | [**RegisterEntry**](RegisterEntry.md) | The register entry for the charge proprietors. Will not be null. | 
**proprietors** | [**Array&lt;Party&gt;**](Party.md) | 1 or more charge proprietors. | [optional] 
**sub_charges** | [**Array&lt;RegisteredCharge&gt;**](RegisteredCharge.md) | The sub-charges for this charge, if any. If there are no sub-charges this field is null rather than an empty array. There can only be one level of sub-charges, i.e. a sub-charge cannot itself have sub-charges. | [optional] 


