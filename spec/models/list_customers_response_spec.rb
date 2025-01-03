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

# Unit tests for SubfiPay::ListCustomersResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubfiPay::ListCustomersResponse do
  let(:instance) { SubfiPay::ListCustomersResponse.new }

  describe 'test an instance of ListCustomersResponse' do
    it 'should create an instance of ListCustomersResponse' do
      expect(instance).to be_instance_of(SubfiPay::ListCustomersResponse)
    end
  end

  let(:attributes) { %w[data meta] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end

end
