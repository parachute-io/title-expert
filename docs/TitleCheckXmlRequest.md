# TitleExpert::TitleCheckXmlRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_parameters** | [**ClientParameters**](ClientParameters.md) | Information about the client issuing the request | 
**deadline** | **DateTime** | If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final response has not been received from the LRBG before the Deadline is met, the Request will be marked as Expired and made available for immediate return (LRBG costs may still be incurred). | [optional] 
**no_aggregated_issues** | **BOOLEAN** | If true then issues which are normally aggregated will instead be split into separate issues (e.g. instead of one issue such as \&quot;3 restriction(s) found\&quot; there will be three separate \&quot;Restriction found\&quot; issues). | [optional] 
**requested_title** | **String** | Optional. The Title Number for which data was originally requested, if different from that actually returned (such as if closed-and-continued). If not provided, the TitleNumber in the Summary data will be used. | [optional] 
**documents** | [**Array&lt;NamedBlob&gt;**](NamedBlob.md) | Optional. If specified provide one or more PDF documents related to the title (as returned from the Register Extract Service). By convention, the first document will contain an Official Copy of the Register of Title and the second an Official Copy of the Title Plan. Specifying an array (empty or otherwise) here will override any attachments in the GatewayResponse property. | [optional] 
**gateway_response** | **String** | Provide the XML SOAP Envelope or ResponseOCWithSummaryV2_1Type or GatewayResponse verbatim from the LRBG, base-64 encoded. Attachment contents will be accepted if valid ZIP or PDF format data is found. Attachment contents are skipped if any value is provided for the Documents property. | 


