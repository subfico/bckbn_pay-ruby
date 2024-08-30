=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require "spec_helper"
require "json"

# Unit tests for BckbnPay::PaymentMethodsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PaymentMethodsApi" do
  let(:api_instance) { BckbnPay::PaymentMethodsApi.new }
  let(:config) { BckbnPay::Configuration.default }
  let(:access_token) { Faker::Lorem.word }
  let(:api_version) { "0.3.0" }
  let(:path) { "/payment_methods" }
  let(:url) { [config.host, path].join }

  let(:request_headers) do
    {
      "Accept"        =>  "application/json",
      "Authorization" => "Bearer #{access_token}",
      "Content-Type"  => "application/json",
      "Expect" => "",
      "User-Agent" => "OpenAPI-Generator/0.3.0/ruby",
      "X-Api-Version" => api_version
    }
  end
  let(:response_headers) do
    {
      "Accept"        =>  "application/json",
      "Content-Type"  => "application/json"
    }
  end

  before do
    BckbnPay.configure do |c|
      c.access_token = access_token
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end

  describe "test an instance of PaymentMethodsApi" do
    it "should create an instance of PaymentMethodsApi" do
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
  describe "payment_methods_id_get test" do
    let(:id) { SecureRandom.uuid }

    before do
      stub_request(:get, url + "/#{id}")
      .with(headers: request_headers)
      .to_return(
        body: fixture("payment_methods/get_#{type}_200.json"),
        headers: response_headers,
        status: 200
      )
    end

    context "with card" do
      let(:type) { "card" }

      it "should work" do
        res = api_instance.get_payment_method(api_version, id)

        expect(res).to be_a(BckbnPay::PaymentMethodResponse)
        expect(a_request(:get, url + "/#{id}").with(headers: request_headers)).to have_been_made.once

        expect(res.billing_address).to be_truthy
        expect(res.card_profile).to be_truthy
      end
    end

    context "with bank account" do
      let(:type) { "bank_account" }

      it "should work" do
        res = api_instance.get_payment_method(api_version, id)

        expect(res).to be_a(BckbnPay::PaymentMethodResponse)
        expect(a_request(:get, url + "/#{id}").with(headers: request_headers)).to have_been_made.once

        expect(res.billing_address).to be_truthy
        expect(res.bank_account_profile).to be_truthy
      end
    end
  end

  # unit tests for create_payment_method
  # Create a payment method
  # @param x_api_version
  # @param content_type
  # @param payment_methods_post_request
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe "#create_payment_method" do
    context "with card" do
      let(:body) do
        {
          payment_method: {
            type: "Card",
            sub_merchant_id: "123",
            billing_address_attributes: {
              country: "US",
              postal_code: "78704"
            },
            card_profile_attributes: {
              encrypted_card_number: "3333333333333333",
              exp_month: 1,
              exp_year: 2027,
              cvc: 123
            }
          }
        }
      end

      before do
        stub_request(:post, url)
          .with(headers: request_headers, body: body.to_json)
          .to_return(
            body: fixture("payment_methods/create_201.json"),
            headers: response_headers,
            status: 201
          )
      end

      it "should work" do
        pm = BckbnPay::PaymentMethodAttributes.new(body[:payment_method])
        res = api_instance.create_payment_method(api_version, { payment_method: pm.to_hash })

        expect(res).to be_a(BckbnPay::PaymentMethodResponse)
        expect(a_request(:post, url).with(body: body.to_json, headers: request_headers)).to have_been_made.once
      end
    end

    context "with bank_account" do
      let(:body) do
        {
          payment_method: {
            type: "BankAccount",
            sub_merchant_id: "123",
            billing_address_attributes: {
              country: "US",
              postal_code: "78704"
            },
            bank_account_profile_attributes: {
              encrypted_account_number: "3333333333333333",
              account_holder_name: "John Doe",
              account_type: "checking",
              routing_number: "012345678",
              bank_name: "Chase"
            }
          }
        }
      end

      before do
        stub_request(:post, url)
          .with(headers: request_headers, body: body.to_json)
          .to_return(
            body: fixture("payment_methods/create_201.json"),
            headers: response_headers,
            status: 201
          )
      end

      it "should work" do
        pm = BckbnPay::PaymentMethodAttributes.new(body[:payment_method])
        res = api_instance.create_payment_method(api_version, { payment_method: pm.to_hash })

        expect(res).to be_a(BckbnPay::PaymentMethodResponse)
        expect(a_request(:post, url).with(body: body.to_json, headers: request_headers)).to have_been_made.once
      end
    end
  end
end
