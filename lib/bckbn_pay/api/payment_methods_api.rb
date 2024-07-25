=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module BckbnPay
  class PaymentMethodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a payment method
    # @param authorization [String] 
    # @param x_api_version [String] 
    # @param content_type [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentMethod]
    def payment_methods_id_get(authorization, x_api_version, content_type, id, opts = {})
      data, _status_code, _headers = payment_methods_id_get_with_http_info(authorization, x_api_version, content_type, id, opts)
      data
    end

    # Retrieve a payment method
    # @param authorization [String] 
    # @param x_api_version [String] 
    # @param content_type [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentMethod, Integer, Hash)>] PaymentMethod data, response status code and response headers
    def payment_methods_id_get_with_http_info(authorization, x_api_version, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentMethodsApi.payment_methods_id_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling PaymentMethodsApi.payment_methods_id_get"
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentMethodsApi.payment_methods_id_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentMethodsApi.payment_methods_id_get"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentMethodsApi.payment_methods_id_get"
      end
      # resource path
      local_var_path = '/payment_methods/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentMethodsApi.payment_methods_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentMethodsApi#payment_methods_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a payment method
    # @param authorization [String] 
    # @param x_api_version [String] 
    # @param content_type [String] 
    # @param payment_methods_post_request [PaymentMethodsPostRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentMethod]
    def payment_methods_post(authorization, x_api_version, content_type, payment_methods_post_request, opts = {})
      data, _status_code, _headers = payment_methods_post_with_http_info(authorization, x_api_version, content_type, payment_methods_post_request, opts)
      data
    end

    # Create a payment method
    # @param authorization [String] 
    # @param x_api_version [String] 
    # @param content_type [String] 
    # @param payment_methods_post_request [PaymentMethodsPostRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentMethod, Integer, Hash)>] PaymentMethod data, response status code and response headers
    def payment_methods_post_with_http_info(authorization, x_api_version, content_type, payment_methods_post_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentMethodsApi.payment_methods_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling PaymentMethodsApi.payment_methods_post"
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentMethodsApi.payment_methods_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentMethodsApi.payment_methods_post"
      end
      # verify the required parameter 'payment_methods_post_request' is set
      if @api_client.config.client_side_validation && payment_methods_post_request.nil?
        fail ArgumentError, "Missing the required parameter 'payment_methods_post_request' when calling PaymentMethodsApi.payment_methods_post"
      end
      # resource path
      local_var_path = '/payment_methods'

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
      header_params[:'Authorization'] = authorization
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_methods_post_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentMethodsApi.payment_methods_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentMethodsApi#payment_methods_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
