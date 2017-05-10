# TitleExpert::BorrowerNameMatchResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response_common** | [**ResponseCommon**](ResponseCommon.md) | Information about the status of the rqeuest. | 
**match_details** | [**Array&lt;BorrowerNameMatchDetails&gt;**](BorrowerNameMatchDetails.md) | One entry for each borrower-proprietor match found, plus one entry for each unmatched borrower and one entry for each unmatched proprietor. Every borrower and every proprietor will appear in exactly one entry. | [optional] 
**issues** | [**Array&lt;BorrowerNameMatchIssue&gt;**](BorrowerNameMatchIssue.md) | The issues found. If there are no issues this is an empty array, rather than null. As well as general issues (e.g. duplicate names) there will be one issue for each non-exact match plus one issue for each unmatched borrower or proprietor. | [optional] 
**min_confidence** | **Integer** | The confidence threshold that was actually used for the BorrowerNameMatch. This will be the default value if not provided in the request. | [optional] 
**request** | [**BorrowerNameMatchRequest**](BorrowerNameMatchRequest.md) | Contains the Custom Check parameters provided by the client. | 


