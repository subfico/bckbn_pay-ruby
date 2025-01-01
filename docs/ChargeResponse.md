# SubFiPay::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **captured_at** | **Time** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **payment_method** | [**PaymentMethodResponse**](PaymentMethodResponse.md) |  | [optional] |
| **processor_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **immediate_capture** | **Boolean** | Determines whether the charge should be captured immediately | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **connected_account_id** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubFiPay::ChargeResponse.new(
  id: null,
  captured_at: null,
  failure_reason: null,
  account_id: null,
  payment_method: null,
  processor_id: null,
  state: null,
  created_at: null,
  amount: null,
  description: null,
  immediate_capture: null,
  payment_method_id: null,
  connected_account_id: null
)
```

