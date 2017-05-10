# TitleExpert::TitleDataExtract

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title_number** | **String** | The title number of the returned OC (not necessarily the same as the title number asked for) | 
**oc_date_time** | **DateTime** | The OC date/time | 
**edition_date** | **DateTime** | The edition date | 
**district** | **String** | The district (always present) | 
**adminstrative_area** | **String** | The administrative area (always present) | [optional] 
**lr_office_name** | **String** | The LR office name (always present) | 
**property_data** | [**PropertyData**](PropertyData.md) | Data extracted about the property (always present) | 
**leases** | [**Array&lt;Lease&gt;**](Lease.md) | Data extracted about the leases, each corresponding to the same entry from the RES summary. Present only if this is a leasehold property (when it may be an empty array), otherwise null. | [optional] 
**schedules_of_leases** | [**Array&lt;ScheduleOfLeases&gt;**](ScheduleOfLeases.md) | Null if the OC contains no schedules of leases, otherwise 0 or more \&quot;schedules\&quot; (where a \&quot;schedule\&quot; is defined as a Schedule entry (i.e. an entry of type Q1ScheduleType) in any of the Property, Proprietorship and Charges Registers whose \&quot;ScheduleType\&quot; is the text \&quot;SCHEDULE OF NOTICES OF LEASE\&quot;). An empty array means that the \&quot;schedule of leases\&quot; is actually just an ordinary entry in the Charges Register. | [optional] 
**proprietors_data** | [**ProprietorsData**](ProprietorsData.md) | Data extracted about the proprietor(s) (always present) | 
**registered_charges_data** | [**RegisteredChargesData**](RegisteredChargesData.md) | Data extracted about the registered charges if any, or null if there are no registered charges | [optional] 
**extra_title_numbers** | [**Array&lt;ExtraTitleNumber&gt;**](ExtraTitleNumber.md) | Details of 1 or more \&quot;extra title numbers\&quot; found, or null if no extra title numbers were found. An \&quot;extra title number\&quot; is a title number mentioned in the OC which is likely to be \&quot;relevant\&quot; when doing something involving the current title number. | [optional] 
**form_a_restrictions** | [**Array&lt;RegisterEntry&gt;**](RegisterEntry.md) | The register entries that were identified as Form A restrictions, or null if no Form A restrictions were found. | [optional] 
**form_p_restrictions** | [**Array&lt;FormPRestriction&gt;**](FormPRestriction.md) | Details of 1 or more Form P restrictions found, or null if no Form P restrictions were found. | [optional] 
**documents** | [**Array&lt;Document&gt;**](Document.md) | Data extracted about the documents referred to on the register, or null if no such documents were found. | [optional] 


