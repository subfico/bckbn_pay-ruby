=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module SubfiPay
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new account
    # @param x_api_version [String] 
    # @param account_create_request [AccountCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AccountResponse]
    def create_account(x_api_version, account_create_request, opts = {})
      data, _status_code, _headers = create_account_with_http_info(x_api_version, account_create_request, opts)
      data
    end

    # Create a new account
    # @param x_api_version [String] 
    # @param account_create_request [AccountCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountResponse, Integer, Hash)>] AccountResponse data, response status code and response headers
    def create_account_with_http_info(x_api_version, account_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.create_account ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling AccountsApi.create_account"
      end
      # verify the required parameter 'account_create_request' is set
      if @api_client.config.client_side_validation && account_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'account_create_request' when calling AccountsApi.create_account"
      end
      # resource path
      local_var_path = '/accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'X-Api-Version'] = x_api_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.create_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#create_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an account by ID
    # @param x_api_version [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [AccountResponse]
    def get_account(x_api_version, id, opts = {})
      data, _status_code, _headers = get_account_with_http_info(x_api_version, id, opts)
      data
    end

    # Retrieve an account by ID
    # @param x_api_version [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountResponse, Integer, Hash)>] AccountResponse data, response status code and response headers
    def get_account_with_http_info(x_api_version, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.get_account ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling AccountsApi.get_account"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account"
      end
      # resource path
      local_var_path = '/accounts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.get_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all accounts
    # @param x_api_version [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @return [ListAccountsResponse]
    def list_accounts(x_api_version, opts = {})
      data, _status_code, _headers = list_accounts_with_http_info(x_api_version, opts)
      data
    end

    # List all accounts
    # @param x_api_version [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @return [Array<(ListAccountsResponse, Integer, Hash)>] ListAccountsResponse data, response status code and response headers
    def list_accounts_with_http_info(x_api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.list_accounts ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling AccountsApi.list_accounts"
      end
      # resource path
      local_var_path = '/accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.list_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#list_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end