# TitleExpert::ReturnedDocuments

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result_type** | **String** | Whether some or all or none of the documents were returned elctronically. Values are FE (full electronic), PE (partial electronic), FP (full postal), CN (cancellation) or IR (Interim). Currently Title Expert does not fully support IR; it is treated like PE but the outstanding documents must be requested again manually. | 
**hmlr_reference** | **String** | An optional reference supplied by the LR. May be null. | [optional] 
**title** | **String** | An optional title supplied by the LR. May be null. | [optional] 
**description** | **String** | An optional description supplied by the LR. May be null. | [optional] 
**documents** | [**Array&lt;ReturnedDocument&gt;**](ReturnedDocument.md) | An array with one entry per document returned. If no documents were returned then the array is empty rather than null. | 


