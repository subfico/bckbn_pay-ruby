=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BckbnPay::PaymentMethodsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentMethodsApi' do
  let(:api_instance) { BckbnPay::PaymentMethodsApi.new }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.access_token = Faker::Lorem.word
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/payment_methods" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Authorization" => "Bearer #{config.access_token}",
      "Content-Type"  => "application/json",
      "Expect" => '',
      'User-Agent' => 'OpenAPI-Generator/0.1.0/ruby',
      'X-Api-Version' => '0.1.0'
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of PaymentMethodsApi' do
    it 'should create an instance of PaymentMethodsApi' do
      expect(api_instance).to be_instance_of(BckbnPay::PaymentMethodsApi)
    end
  end

  # unit tests for payment_methods_id_get
  # Retrieve a payment method
  # @param x_api_version
  # @param content_type
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe 'payment_methods_id_get test' do
    let(:id) { SecureRandom.uuid }

    before do
      stub_request(:get, [config.host, path].join + "/#{id}")
      .with(headers: request_headers)
      .to_return(
        body: fixture("payment_methods/get_200.json"),
        headers: response_headers,
        status: 200
      )
    end

    it 'should work' do
      res = api_instance.payment_methods_id_get(config.access_token, "0.1.0", "application/json", id)

      expect(res).to be_a(BckbnPay::PaymentMethod)
      expect(a_request(:get, [config.host, path].join + "/#{id}").with(headers: request_headers)).to have_been_made.once
    end
  end

  # unit tests for payment_methods_post
  # Create a payment method
  # @param x_api_version
  # @param content_type
  # @param payment_methods_post_request
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe 'payment_methods_post test' do
    let(:body) do
      {
        payment_method: {
          type: "Card",
          card_profile_attributes: {
            encrypted_card_number: "3333333333333333",
            exp_month: 1,
            exp_year: 2027,
            cvc: 123
          },
          billing_address_attributes: {
            country: "US",
            postal_code: "78704"
          }
        }
      }
    end

    before do
      stub_request(:post, [config.host, path].join)
      .with(headers: request_headers, body: body.to_json)
      .to_return(
        body: fixture("payment_methods/create_201.json"),
        headers: response_headers,
        status: 201
      )
    end

    it 'should work' do
      res = api_instance.payment_methods_post(config.access_token, "0.1.0", "application/json", body)

      expect(res).to be_a(BckbnPay::PaymentMethod)
      expect(a_request(:post, [config.host, path].join).with(body: body.to_json, headers: request_headers)).to have_been_made.once
    end
  end
end
