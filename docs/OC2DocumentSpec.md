# TitleExpert::OC2DocumentSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document_type** | **String** | The type of document. Must be specified. | 
**date** | **DateTime** | The date of the document (in the format yyyy-mm-dd), or null for the most recent version. | [optional] 
**file_under** | **String** | Null unless the document is filed under a different (from the title number of the request) title number. | [optional] 
**additional_information** | **String** | Null unless DocumentType is Other, when it must be a non-empty string describing the document. | [optional] 


