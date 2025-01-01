=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SubFiPay::EventsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventsApi' do
  let(:api_instance) { SubFiPay::EventsApi.new }
  let(:api_key) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:api_version) { "0.1.0" }
  let(:account_id) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.api_key['ApiKeyAuth'] = api_key
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/events" }
  let(:request_headers) do
    {
      "Content-Type"  => "application/json",
      'X-Api-Version' => SubFiPay::VERSION,
      'X-Api-Key' => api_key,
      'Expect' => '',
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(api_instance).to be_instance_of(SubFiPay::EventsApi)
    end
  end

  # unit tests for get_event
  # Retrieve a single event by ID
  # @param x_api_version
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Event]
  describe 'get_event test' do
    let(:event_id) { Faker::Alphanumeric.alphanumeric(number: 32) }
    let(:path) { "/events/#{event_id}" }

    before do
      stub_request(:get, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          status: 200,
          body: fixture("events/show_200.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.get_event(api_version, account_id, event_id)
      expect(res).to be_instance_of(SubFiPay::Event)
    end
  end

  # unit tests for list_events
  # List all events
  # @param x_api_version
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of results to retrieve.
  # @option opts [Integer] :per_page Number of results per page.
  # @return [ListEventsResponse]
  describe 'list_events test' do
    let(:path) { "/events" }

    before do
      stub_request(:get, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          status: 200,
          body: fixture("events/list_200.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.list_events(api_version, account_id)
      expect(res).to be_instance_of(SubFiPay::ListEventsResponse)
    end
  end

end
