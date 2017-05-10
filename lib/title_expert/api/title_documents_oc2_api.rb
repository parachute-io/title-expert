=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module TitleExpert
  class TitleDocumentsOC2Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def title_documents_acknowledge_dequeued(clientid, requestid, opts = {})
      title_documents_acknowledge_dequeued_with_http_info(clientid, requestid, opts)
      return nil
    end

    # Acknowledge receipt of the result of a Request that was retrieved from the get-next-ready endpoint.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def title_documents_acknowledge_dequeued_with_http_info(clientid, requestid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_acknowledge_dequeued ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_acknowledge_dequeued" if clientid.nil?
      # verify the required parameter 'requestid' is set
      fail ArgumentError, "Missing the required parameter 'requestid' when calling TitleDocumentsOC2Api.title_documents_acknowledge_dequeued" if requestid.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents/{requestid}/ack-next-ready".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s).sub('{' + 'requestid' + '}', requestid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_acknowledge_dequeued\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def title_documents_acknowledge_request(clientid, requestid, opts = {})
      title_documents_acknowledge_request_with_http_info(clientid, requestid, opts)
      return nil
    end

    # Acknowledge receipt of the result of a Request that was not retrieved from the get-next-ready endpoint.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def title_documents_acknowledge_request_with_http_info(clientid, requestid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_acknowledge_request ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_acknowledge_request" if clientid.nil?
      # verify the required parameter 'requestid' is set
      fail ArgumentError, "Missing the required parameter 'requestid' when calling TitleDocumentsOC2Api.title_documents_acknowledge_request" if requestid.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents/{requestid}/ack".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s).sub('{' + 'requestid' + '}', requestid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_acknowledge_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Issue a request for Title Documents (OC2). Will continue if applications are pending against the Title (returning back-dated) or if closed and continued (under the new Title number). This will incur a charge.
    # 
    # @param clientid Your client id.
    # @param docs_request Details of the documents to be requested.
    # @param [Hash] opts the optional parameters
    # @return [DocumentsResponse]
    def title_documents_create_request(clientid, docs_request, opts = {})
      data, _status_code, _headers = title_documents_create_request_with_http_info(clientid, docs_request, opts)
      return data
    end

    # Issue a request for Title Documents (OC2). Will continue if applications are pending against the Title (returning back-dated) or if closed and continued (under the new Title number). This will incur a charge.
    # 
    # @param clientid Your client id.
    # @param docs_request Details of the documents to be requested.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentsResponse, Fixnum, Hash)>] DocumentsResponse data, response status code and response headers
    def title_documents_create_request_with_http_info(clientid, docs_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_create_request ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_create_request" if clientid.nil?
      # verify the required parameter 'docs_request' is set
      fail ArgumentError, "Missing the required parameter 'docs_request' when calling TitleDocumentsOC2Api.title_documents_create_request" if docs_request.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(docs_request)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_create_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
    # 
    # @param clientid Your client id.
    # @param [Hash] opts the optional parameters
    # @return [TitleDataResponse]
    def title_documents_dequeue_next_ready_for_ack(clientid, opts = {})
      data, _status_code, _headers = title_documents_dequeue_next_ready_for_ack_with_http_info(clientid, opts)
      return data
    end

    # Gets the next earliest-started Request which has finished and has not yet been Acknowledged. The request will be locked for a certain time window within which it will not be available from get-next-ready. Normally, you will Acknowledge within this time window as part of your processing of the results.
    # 
    # @param clientid Your client id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TitleDataResponse, Fixnum, Hash)>] TitleDataResponse data, response status code and response headers
    def title_documents_dequeue_next_ready_for_ack_with_http_info(clientid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_dequeue_next_ready_for_ack ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_dequeue_next_ready_for_ack" if clientid.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents/get-next-ready".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TitleDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_dequeue_next_ready_for_ack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one of the documents returned by a Title Documents request.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param documentid The id of the particular document.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def title_documents_get_document(clientid, requestid, documentid, opts = {})
      data, _status_code, _headers = title_documents_get_document_with_http_info(clientid, requestid, documentid, opts)
      return data
    end

    # Get one of the documents returned by a Title Documents request.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param documentid The id of the particular document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def title_documents_get_document_with_http_info(clientid, requestid, documentid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_get_document ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_get_document" if clientid.nil?
      # verify the required parameter 'requestid' is set
      fail ArgumentError, "Missing the required parameter 'requestid' when calling TitleDocumentsOC2Api.title_documents_get_document" if requestid.nil?
      # verify the required parameter 'documentid' is set
      fail ArgumentError, "Missing the required parameter 'documentid' when calling TitleDocumentsOC2Api.title_documents_get_document" if documentid.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents/{requestid}/{documentid}".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s).sub('{' + 'requestid' + '}', requestid.to_s).sub('{' + 'documentid' + '}', documentid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the current status of a Title Documents request.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param [Hash] opts the optional parameters
    # @return [DocumentsResponse]
    def title_documents_get_request(clientid, requestid, opts = {})
      data, _status_code, _headers = title_documents_get_request_with_http_info(clientid, requestid, opts)
      return data
    end

    # Get the current status of a Title Documents request.
    # 
    # @param clientid Your client id.
    # @param requestid The id of the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentsResponse, Fixnum, Hash)>] DocumentsResponse data, response status code and response headers
    def title_documents_get_request_with_http_info(clientid, requestid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_get_request ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_get_request" if clientid.nil?
      # verify the required parameter 'requestid' is set
      fail ArgumentError, "Missing the required parameter 'requestid' when calling TitleDocumentsOC2Api.title_documents_get_request" if requestid.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents/{requestid}".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s).sub('{' + 'requestid' + '}', requestid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_get_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for Title Documents requests meeting the specified criteria.
    # 
    # @param clientid Your client id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert.
    # @option opts [String] :statussince Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss).
    # @option opts [String] :acknowledged Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged.
    # @option opts [String] :clientref Optional reference provided when request was submitted.
    # @option opts [String] :title Optional title number.
    # @option opts [String] :order Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst.
    # @option opts [String] :maxentries Optional. Limits the number of requests returned.
    # @return [Array<DocumentsResponse>]
    def title_documents_search(clientid, opts = {})
      data, _status_code, _headers = title_documents_search_with_http_info(clientid, opts)
      return data
    end

    # Search for Title Documents requests meeting the specified criteria.
    # 
    # @param clientid Your client id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Optional. Values allowed are: pending, complete, failed, cancelled, expired. Prepend ! to invert.
    # @option opts [String] :statussince Optional. Searches for requests whose status last changed at/after the specified UTC date/time (ISO8601/like format yyyy-MM-dd HH:mm:ss).
    # @option opts [String] :acknowledged Optional. Whether to search for requests that have (1, y, yes, true) or have not (0, n, no, false) been Acknowledged.
    # @option opts [String] :clientref Optional reference provided when request was submitted.
    # @option opts [String] :title Optional title number.
    # @option opts [String] :order Optional. Order by date request started; values allowed are: oldestfirst (default), newestfirst.
    # @option opts [String] :maxentries Optional. Limits the number of requests returned.
    # @return [Array<(Array<DocumentsResponse>, Fixnum, Hash)>] Array<DocumentsResponse> data, response status code and response headers
    def title_documents_search_with_http_info(clientid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TitleDocumentsOC2Api.title_documents_search ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling TitleDocumentsOC2Api.title_documents_search" if clientid.nil?
      # resource path
      local_var_path = "/api/{clientid}/documents".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s)

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'statussince'] = opts[:'statussince'] if !opts[:'statussince'].nil?
      query_params[:'acknowledged'] = opts[:'acknowledged'] if !opts[:'acknowledged'].nil?
      query_params[:'clientref'] = opts[:'clientref'] if !opts[:'clientref'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'maxentries'] = opts[:'maxentries'] if !opts[:'maxentries'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<DocumentsResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TitleDocumentsOC2Api#title_documents_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end