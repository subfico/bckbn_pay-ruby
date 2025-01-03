# subfi_pay

SubfiPay - the Ruby gem for the SubFi Pay API

API for SubFi Pay services

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1.0
- Package version: 0.1.1
- Generator version: 7.7.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build subfi_pay.gemspec
```

Then either install the gem locally:

```shell
gem install ./subfi_pay-0.1.1.gem
```

(for development, run `gem install --dev ./subfi_pay-0.1.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'subfi_pay', '~> 0.1.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'subfi_pay', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'subfi_pay'

# Setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubfiPay::AccessKeysApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  #Delete an access key by ID
  api_instance.delete_access_key(x_api_version, id)
rescue SubfiPay::ApiError => e
  puts "Exception when calling AccessKeysApi->delete_access_key: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://pay-sandbox.subfi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SubfiPay::AccessKeysApi* | [**delete_access_key**](docs/AccessKeysApi.md#delete_access_key) | **DELETE** /access_keys/{id} | Delete an access key by ID
*SubfiPay::AccessKeysApi* | [**list_access_keys**](docs/AccessKeysApi.md#list_access_keys) | **GET** /access_keys | List all access keys
*SubfiPay::AccessKeysApi* | [**roll_access_key**](docs/AccessKeysApi.md#roll_access_key) | **POST** /access_keys/{id}/roll | Roll an access key by ID
*SubfiPay::AccountsApi* | [**create_account**](docs/AccountsApi.md#create_account) | **POST** /accounts | Create a new account
*SubfiPay::AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /accounts/{id} | Retrieve an account by ID
*SubfiPay::AccountsApi* | [**list_accounts**](docs/AccountsApi.md#list_accounts) | **GET** /accounts | List all accounts
*SubfiPay::BalanceTransactionsApi* | [**list_balance_transactions**](docs/BalanceTransactionsApi.md#list_balance_transactions) | **GET** /balance_transactions | List all balance transactions
*SubfiPay::ChargesApi* | [**get_charge**](docs/ChargesApi.md#get_charge) | **GET** /charges/{id} | Retrieve a charge
*SubfiPay::ChargesApi* | [**list_charges**](docs/ChargesApi.md#list_charges) | **GET** /charges | List all charges
*SubfiPay::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /customers | Create a new customer
*SubfiPay::CustomersApi* | [**get_customer**](docs/CustomersApi.md#get_customer) | **GET** /customers/{id} | Retrieve a customer by ID
*SubfiPay::CustomersApi* | [**list_customers**](docs/CustomersApi.md#list_customers) | **GET** /customers | List all customers
*SubfiPay::CustomersApi* | [**update_customer**](docs/CustomersApi.md#update_customer) | **PATCH** /customers/{id} | Update a customer by ID
*SubfiPay::EventsApi* | [**get_event**](docs/EventsApi.md#get_event) | **GET** /events/{id} | Retrieve a single event by ID
*SubfiPay::EventsApi* | [**list_events**](docs/EventsApi.md#list_events) | **GET** /events | List all events
*SubfiPay::PaymentIntentsApi* | [**cancel_payment_intent**](docs/PaymentIntentsApi.md#cancel_payment_intent) | **POST** /payment_intents/{id}/cancel | Cancel a payment intent
*SubfiPay::PaymentIntentsApi* | [**capture_payment_intent**](docs/PaymentIntentsApi.md#capture_payment_intent) | **POST** /payment_intents/{id}/capture | Capture a payment intent
*SubfiPay::PaymentIntentsApi* | [**confirm_payment_intent**](docs/PaymentIntentsApi.md#confirm_payment_intent) | **POST** /payment_intents/{id}/confirm | Confirm a payment intent
*SubfiPay::PaymentIntentsApi* | [**create_payment_intent**](docs/PaymentIntentsApi.md#create_payment_intent) | **POST** /payment_intents | Create a new payment intent
*SubfiPay::PaymentIntentsApi* | [**get_payment_intent**](docs/PaymentIntentsApi.md#get_payment_intent) | **GET** /payment_intents/{id} | Retrieve a payment intent by ID
*SubfiPay::PaymentIntentsApi* | [**list_payment_intents**](docs/PaymentIntentsApi.md#list_payment_intents) | **GET** /payment_intents | List payment intents
*SubfiPay::PaymentIntentsApi* | [**update_payment_intent**](docs/PaymentIntentsApi.md#update_payment_intent) | **PATCH** /payment_intents/{id} | Update a payment intent
*SubfiPay::PaymentMethodsApi* | [**create_payment_method**](docs/PaymentMethodsApi.md#create_payment_method) | **POST** /payment_methods | Create a payment method
*SubfiPay::PaymentMethodsApi* | [**get_payment_method**](docs/PaymentMethodsApi.md#get_payment_method) | **GET** /payment_methods/{id} | Retrieve a payment method
*SubfiPay::PaymentMethodsApi* | [**list_payment_methods**](docs/PaymentMethodsApi.md#list_payment_methods) | **GET** /payment_methods | List all payment methods
*SubfiPay::RefundsApi* | [**cancel_refund**](docs/RefundsApi.md#cancel_refund) | **PUT** /refunds/{id}/cancel | Cancel a refund
*SubfiPay::RefundsApi* | [**create_refund**](docs/RefundsApi.md#create_refund) | **POST** /refunds | Create a refund
*SubfiPay::RefundsApi* | [**get_refund**](docs/RefundsApi.md#get_refund) | **GET** /refunds/{id} | Get a refund by ID
*SubfiPay::RefundsApi* | [**list_refunds**](docs/RefundsApi.md#list_refunds) | **GET** /refunds | List refunds for a Charge
*SubfiPay::SubscriptionsApi* | [**create_subscription**](docs/SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create a new subscription
*SubfiPay::SubscriptionsApi* | [**get_subscription**](docs/SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{id} | Retrieve a subscription by ID
*SubfiPay::WebhookEndpointsApi* | [**create_webhook_endpoint**](docs/WebhookEndpointsApi.md#create_webhook_endpoint) | **POST** /webhook_endpoints | Create a webhook endpoint
*SubfiPay::WebhookEndpointsApi* | [**delete_webhook_endpoint**](docs/WebhookEndpointsApi.md#delete_webhook_endpoint) | **DELETE** /webhook_endpoints/{id} | Delete a webhook endpoint by ID
*SubfiPay::WebhookEndpointsApi* | [**get_webhook_endpoint**](docs/WebhookEndpointsApi.md#get_webhook_endpoint) | **GET** /webhook_endpoints/{id} | Retrieve a webhook endpoint by ID
*SubfiPay::WebhookEndpointsApi* | [**list_webhook_endpoints**](docs/WebhookEndpointsApi.md#list_webhook_endpoints) | **GET** /webhook_endpoints | List all webhook endpoints
*SubfiPay::WebhookEndpointsApi* | [**update_webhook_endpoint**](docs/WebhookEndpointsApi.md#update_webhook_endpoint) | **PATCH** /webhook_endpoints/{id} | Update a webhook endpoint by ID
*SubfiPay::WebhookRequestsApi* | [**list_webhook_requests**](docs/WebhookRequestsApi.md#list_webhook_requests) | **GET** /webhook_requests | List all webhook requests


## Documentation for Models

 - [SubfiPay::AccessKey](docs/AccessKey.md)
 - [SubfiPay::AccountAttributes](docs/AccountAttributes.md)
 - [SubfiPay::AccountCreateRequest](docs/AccountCreateRequest.md)
 - [SubfiPay::AccountResponse](docs/AccountResponse.md)
 - [SubfiPay::BalanceTransactionResponse](docs/BalanceTransactionResponse.md)
 - [SubfiPay::BankAccountProfile](docs/BankAccountProfile.md)
 - [SubfiPay::BillingAddress](docs/BillingAddress.md)
 - [SubfiPay::CardProfile](docs/CardProfile.md)
 - [SubfiPay::ChargeAttributes](docs/ChargeAttributes.md)
 - [SubfiPay::ChargeResponse](docs/ChargeResponse.md)
 - [SubfiPay::ConnectedAccountAttributes](docs/ConnectedAccountAttributes.md)
 - [SubfiPay::ConnectedAccountResponse](docs/ConnectedAccountResponse.md)
 - [SubfiPay::CreateWebhookEndpointRequest](docs/CreateWebhookEndpointRequest.md)
 - [SubfiPay::CreateWebhookEndpointRequestWebhookEndpoint](docs/CreateWebhookEndpointRequestWebhookEndpoint.md)
 - [SubfiPay::Customer](docs/Customer.md)
 - [SubfiPay::CustomerAttributes](docs/CustomerAttributes.md)
 - [SubfiPay::CustomerCreateRequest](docs/CustomerCreateRequest.md)
 - [SubfiPay::CustomerUpdateAttributes](docs/CustomerUpdateAttributes.md)
 - [SubfiPay::CustomerUpdateRequest](docs/CustomerUpdateRequest.md)
 - [SubfiPay::Event](docs/Event.md)
 - [SubfiPay::ListAccessKeysResponse](docs/ListAccessKeysResponse.md)
 - [SubfiPay::ListAccountsResponse](docs/ListAccountsResponse.md)
 - [SubfiPay::ListBalanceTransactionsResponse](docs/ListBalanceTransactionsResponse.md)
 - [SubfiPay::ListChargesResponse](docs/ListChargesResponse.md)
 - [SubfiPay::ListCustomersResponse](docs/ListCustomersResponse.md)
 - [SubfiPay::ListEventsResponse](docs/ListEventsResponse.md)
 - [SubfiPay::ListPaymentIntentsResponse](docs/ListPaymentIntentsResponse.md)
 - [SubfiPay::ListPaymentMethodsResponse](docs/ListPaymentMethodsResponse.md)
 - [SubfiPay::ListRefundsResponse](docs/ListRefundsResponse.md)
 - [SubfiPay::ListWebhookEndpointsResponse](docs/ListWebhookEndpointsResponse.md)
 - [SubfiPay::ListWebhookRequestsResponse](docs/ListWebhookRequestsResponse.md)
 - [SubfiPay::Meta](docs/Meta.md)
 - [SubfiPay::PaymentIntentAttributes](docs/PaymentIntentAttributes.md)
 - [SubfiPay::PaymentIntentCreateRequest](docs/PaymentIntentCreateRequest.md)
 - [SubfiPay::PaymentIntentResponse](docs/PaymentIntentResponse.md)
 - [SubfiPay::PaymentIntentUpdateAttributes](docs/PaymentIntentUpdateAttributes.md)
 - [SubfiPay::PaymentIntentUpdateAttributesPaymentIntent](docs/PaymentIntentUpdateAttributesPaymentIntent.md)
 - [SubfiPay::PaymentMethodAttributes](docs/PaymentMethodAttributes.md)
 - [SubfiPay::PaymentMethodResponse](docs/PaymentMethodResponse.md)
 - [SubfiPay::RefundAttributes](docs/RefundAttributes.md)
 - [SubfiPay::RefundResponse](docs/RefundResponse.md)
 - [SubfiPay::RollAccessKeyAttributes](docs/RollAccessKeyAttributes.md)
 - [SubfiPay::RollAccessKeyAttributesAccessKey](docs/RollAccessKeyAttributesAccessKey.md)
 - [SubfiPay::SubscriptionAttributes](docs/SubscriptionAttributes.md)
 - [SubfiPay::SubscriptionCreateRequest](docs/SubscriptionCreateRequest.md)
 - [SubfiPay::SubscriptionResponse](docs/SubscriptionResponse.md)
 - [SubfiPay::WebhookEndpoint](docs/WebhookEndpoint.md)
 - [SubfiPay::WebhookRequest](docs/WebhookRequest.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### ApiKeyAuth


- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

