# swagger.model.KycFormsV2CurrentLevel

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**levelId** | **String** | level id | [optional] [default to null]
**status** | **String** | level status, one of \&quot;NOT_SUBMITTED, SUBMITTED, APPROVED, REJECTED\&quot; | [optional] [default to null]
**paymentMethod** | **String** | payment method, the value is determined from GET /currencies/price endpoint, methods are \&quot;sepa_bank_transfer, credit_debit_card, neft_bank_transfer, upi\&quot; | [optional] [default to null]
**fiatCurrency** | **String** | fiat currency | [optional] [default to null]
**limits** | [**KycFormsV2CurrentLevelLimits**](KycFormsV2CurrentLevelLimits.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


