=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module TitleExpert
  class AddressNormalisationAndMatchingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Compares two addresses on a \"logical first line and postcode\" basis.
    # 
    # @param clientid Your client id.
    # @param addresses The addresses to be compared.
    # @param [Hash] opts the optional parameters
    # @return [AddressMatchResponse]
    def address_match_match(clientid, addresses, opts = {})
      data, _status_code, _headers = address_match_match_with_http_info(clientid, addresses, opts)
      return data
    end

    # Compares two addresses on a \&quot;logical first line and postcode\&quot; basis.
    # 
    # @param clientid Your client id.
    # @param addresses The addresses to be compared.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddressMatchResponse, Fixnum, Hash)>] AddressMatchResponse data, response status code and response headers
    def address_match_match_with_http_info(clientid, addresses, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressNormalisationAndMatchingApi.address_match_match ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling AddressNormalisationAndMatchingApi.address_match_match" if clientid.nil?
      # verify the required parameter 'addresses' is set
      fail ArgumentError, "Missing the required parameter 'addresses' when calling AddressNormalisationAndMatchingApi.address_match_match" if addresses.nil?
      # resource path
      local_var_path = "/api/{clientid}/addressmatch/match".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s)

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
      post_body = @api_client.object_to_http_body(addresses)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AddressMatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressNormalisationAndMatchingApi#address_match_match\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Normalise an address by concatenating lines, singling multiple spaces, removing punctuation and doing things like replacing \"Road\" by \"Rd\".
    # 
    # @param clientid Your client id.
    # @param address The address to be normalised.
    # @param [Hash] opts the optional parameters
    # @return [Address]
    def address_match_normalise(clientid, address, opts = {})
      data, _status_code, _headers = address_match_normalise_with_http_info(clientid, address, opts)
      return data
    end

    # Normalise an address by concatenating lines, singling multiple spaces, removing punctuation and doing things like replacing \&quot;Road\&quot; by \&quot;Rd\&quot;.
    # 
    # @param clientid Your client id.
    # @param address The address to be normalised.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
    def address_match_normalise_with_http_info(clientid, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressNormalisationAndMatchingApi.address_match_normalise ..."
      end
      # verify the required parameter 'clientid' is set
      fail ArgumentError, "Missing the required parameter 'clientid' when calling AddressNormalisationAndMatchingApi.address_match_normalise" if clientid.nil?
      # verify the required parameter 'address' is set
      fail ArgumentError, "Missing the required parameter 'address' when calling AddressNormalisationAndMatchingApi.address_match_normalise" if address.nil?
      # resource path
      local_var_path = "/api/{clientid}/addressmatch/normalise".sub('{format}','json').sub('{' + 'clientid' + '}', clientid.to_s)

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
      post_body = @api_client.object_to_http_body(address)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Address')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressNormalisationAndMatchingApi#address_match_normalise\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
