=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BckbnPay::WebhookRequestsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookRequestsApi' do
  let(:api_instance) { BckbnPay::WebhookRequestsApi.new }
  let(:api_key) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:api_version) { "0.1.0" }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.api_key['ApiKeyAuth'] = api_key
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/webhook_requests" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json",
      'X-Api-Version' => api_version,
      'X-Api-Key' => api_key
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end


  describe 'test an instance of WebhookRequestsApi' do
    it 'should create an instance of WebhookRequestsApi' do
      expect(api_instance).to be_instance_of(BckbnPay::WebhookRequestsApi)
    end
  end

  # unit tests for list_webhook_requests
  # List all webhook requests
  # @param x_api_version
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of results to retrieve.
  # @option opts [Integer] :per_page Number of results per page.
  # @return [ListWebhookRequestsResponse]
  describe 'list_webhook_requests test' do
    before do
      stub_request(:get, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          status: 200,
          body: fixture("webhook_requests/list_200.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.list_webhook_requests(api_version)

      expect(res).to be_instance_of(BckbnPay::ListWebhookRequestsResponse)
    end
  end

end