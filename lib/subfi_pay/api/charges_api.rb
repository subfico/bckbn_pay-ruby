=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module SubfiPay
  class ChargesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a charge
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :connected_account_id Filter results by sub_merchant ID.
    # @return [ChargeResponse]
    def get_charge(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = get_charge_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Retrieve a charge
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :connected_account_id Filter results by sub_merchant ID.
    # @return [Array<(ChargeResponse, Integer, Hash)>] ChargeResponse data, response status code and response headers
    def get_charge_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChargesApi.get_charge ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling ChargesApi.get_charge"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling ChargesApi.get_charge"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChargesApi.get_charge"
      end
      # resource path
      local_var_path = '/charges/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'connected_account_id'] = opts[:'connected_account_id'] if !opts[:'connected_account_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ChargeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"ChargesApi.get_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#get_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all charges
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @option opts [String] :connected_account_id Filter results by sub_merchant ID.
    # @option opts [String] :payment_intent_id Filter results by payment intent ID.
    # @return [ListChargesResponse]
    def list_charges(x_api_version, x_account_id, opts = {})
      data, _status_code, _headers = list_charges_with_http_info(x_api_version, x_account_id, opts)
      data
    end

    # List all charges
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @option opts [String] :connected_account_id Filter results by sub_merchant ID.
    # @option opts [String] :payment_intent_id Filter results by payment intent ID.
    # @return [Array<(ListChargesResponse, Integer, Hash)>] ListChargesResponse data, response status code and response headers
    def list_charges_with_http_info(x_api_version, x_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChargesApi.list_charges ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling ChargesApi.list_charges"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling ChargesApi.list_charges"
      end
      # resource path
      local_var_path = '/charges'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'connected_account_id'] = opts[:'connected_account_id'] if !opts[:'connected_account_id'].nil?
      query_params[:'payment_intent_id'] = opts[:'payment_intent_id'] if !opts[:'payment_intent_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListChargesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"ChargesApi.list_charges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#list_charges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end