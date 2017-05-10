# TitleExpert::RegisterEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**register** | **String** | The register containing the entry | 
**is_schedule** | **BOOLEAN** | Whether this entry is a normal register entry (false) or is an entry in a schedule (true) | 
**schedule_type** | **String** | If this is an entry in a schedule then the schedule type, otherwise null. | [optional] 
**schedule_number** | **Integer** | If this is an entry in a schedule then the 1-based index into the array of Schedules for this register, otherwise null. | [optional] 
**entry_number** | **String** | The non-null non-empty entry \&quot;number\&quot;. Although normally an integer, it is typed as a string in the RES schema. | 
**entry_type** | **String** | An optional string (so may be null) describing the type of the register entry. The possible values are not defined anywhere, but on 30/05/2012 Matthew Bell of the Land Registry gave us a list (of some 300 entries) of all the values he knew about. | [optional] 
**entry_date** | **DateTime** | Date of the entry. May be null. | [optional] 
**registration_date** | **DateTime** | Registration date of the entry. May be null. I believe this only applies to certain types of entry. | [optional] 
**text_has_newlines** | **BOOLEAN** | If present and true, then the text of the entry preserves the line breaks in the register. Entries with this value set should be displayed in a fixed-width font as they are typically formatted so as to appear in columns. | [optional] 
**text** | **String** | Text of the entry. If TextHasNewlines &#x3D;&#x3D; true then lines are separated with Environment.Newline, otherwise line breaks have been replaced by spaces. | 


