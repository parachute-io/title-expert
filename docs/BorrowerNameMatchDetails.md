# TitleExpert::BorrowerNameMatchDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**match_type** | **String** | The type of match. | 
**borrower_index** | **Integer** | The 0-based index of the borrower in the Borrowers array in the request, or null if MatchType is UnmatchedProprietor | [optional] 
**borrower_name** | [**Name**](Name.md) | The borrower&#39;s name, or null if MatchType is UnmatchedProprietor | [optional] 
**proprietor_index** | **Integer** | The 0-based index of the proprietor in the array of proprietors in the TitleCheckResults, or null if MatchType is UnmatchedBorrower | [optional] 
**proprietor** | [**Party**](Party.md) | Details of the proprietor, or null if MatchType is UnmatchedBorrower | [optional] 
**fuzzy_match_score_percent** | **Integer** | Null unless MatchType is FuzzyMatch, when it is the confidence (%) of the match | [optional] 


