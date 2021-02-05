# swagger.model.OrderV2

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [default to null]
**walletAddress** | **String** | Your wallet address | [default to null]
**createdAt** | **String** | Order creation date | [default to null]
**status** | **String** | Order status | [default to null]
**fiatCurrency** | **String** | Fiat currency which the users wants to buy/sell | [default to null]
**cryptoCurrency** | **String** | Crypto currency which the users wants to sell/buy | [default to null]
**isBuyOrSell** | **String** | Is BUY or SELL | [default to null]
**fiatAmount** | **int** | Fiat amount that is required to buy/sell | [default to null]
**walletLink** | **bool** |  | [default to null]
**paymentOptionId** | **String** | Payment method id, like gbp_bank_transfer | [default to null]
**reservationId** | **String** |  | [default to null]
**addressAdditionalData** | **String** | address additional data like memo id | [optional] [default to null]
**network** | **bool** | Crypto network id. Example BEP2, ERC-20 | [default to null]
**amountPaid** | **int** |  | [default to null]
**referenceCode** | **int** | Payment reference code | [default to null]
**conversionPrice** | **num** | Conversion price | [default to null]
**cryptoAmount** | **num** | Crypto amount that is required to sell/buy | [default to null]
**totalFeeInFiat** | **int** | Total fee in fiat | [default to null]
**paymentOptions** | [**List&lt;Object&gt;**](Object.md) |  | [default to []]
**autoExpiresAt** | **String** | Order expiry date | [default to null]
**fromWalletAddress** | **bool** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


