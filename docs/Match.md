# TitleExpert::Match

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject_property** | [**SubjectProperty**](SubjectProperty.md) | Contains the title number and address details for the property matched. | 
**proprietorship** | **String** | Whether the property is Sole or Joint owned. | 
**surname** | [**MatchInfo**](MatchInfo.md) | Indicates whether the Surname was matched and details of how it matched. MatchType will be set to Skipped where there is no Private Individual proprietorship name found for a title number or where LR have no proprietorship details available for a title number. | 
**forename** | [**MatchInfo**](MatchInfo.md) | Indicates whether the Forename was matched and details of how it matched. Forename and Middle name matches will be returned with a MatchType of Skipped if there was NO match on Surname. | 
**middle_name** | [**MatchInfo**](MatchInfo.md) | Indicates whether the Middle name was matched and details of how it matched. Forename and Middle name matches will be returned with a MatchType of Skipped if there was NO match on Surname. | 
**all_names** | [**MatchInfo**](MatchInfo.md) | Indicates if a match is found against the string concatenation of forename, middle name(s) and surname. Will only be returned when there is no match on surname. | [optional] 
**historical_match** | [**HistoricalMatch**](HistoricalMatch.md) | Whether the match corresponds with a previous ownership of the property (and the dates of same, if available). Will be null/missing if the match corresponds to current ownership of the property. | [optional] 


