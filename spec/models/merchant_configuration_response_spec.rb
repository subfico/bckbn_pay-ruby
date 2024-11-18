=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BckbnPay::MerchantConfigurationResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::MerchantConfigurationResponse do
  let(:instance) { BckbnPay::MerchantConfigurationResponse.new }

  describe 'test an instance of MerchantConfigurationResponse' do
    it 'should create an instance of MerchantConfigurationResponse' do
      expect(instance).to be_instance_of(BckbnPay::MerchantConfigurationResponse)
    end
  end

  let(:attributes) { %w[verification_threshold] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end