=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SubfiPay::WebhookEndpoint
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubfiPay::WebhookEndpoint do
  let(:instance) { SubfiPay::WebhookEndpoint.new }

  describe 'test an instance of WebhookEndpoint' do
    it 'should create an instance of WebhookEndpoint' do
      expect(instance).to be_instance_of(SubfiPay::WebhookEndpoint)
    end
  end

  let(:attributes) { %w[id event metadata url enabled account_id connected_account_id created_at updated_at] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end


end
