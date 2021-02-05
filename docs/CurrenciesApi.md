# swagger.api.CurrenciesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://staging-api.transak.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currenciesCurrencyList**](CurrenciesApi.md#currenciesCurrencyList) | **GET** /currencies/crypto-currencies | 1. Get crypto currencies
[**currenciesGetPrice**](CurrenciesApi.md#currenciesGetPrice) | **GET** /currencies/price | 3. Get a currency price
[**currenciesVerifyWalletAddress**](CurrenciesApi.md#currenciesVerifyWalletAddress) | **GET** /currencies/verify-wallet-address | 4. Verify wallet address
[**fiatCurrenciesList**](CurrenciesApi.md#fiatCurrenciesList) | **GET** /currencies/fiat-currencies | 2. Get fiat currencies


# **currenciesCurrencyList**
> InlineResponse2007 currenciesCurrencyList()

1. Get crypto currencies

Get the supporting crypto currencies list 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();

try { 
    var result = api_instance.currenciesCurrencyList();
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->currenciesCurrencyList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currenciesGetPrice**
> InlineResponse2006 currenciesGetPrice(fiatCurrency, cryptoCurrency, isBuyOrSell, paymentMethodId, fiatAmount, cryptoAmount, partnerApiKey)

3. Get a currency price

Get the price as per the payment method, fiat currency, amount  > Although fiatAmount and cryptoAmount is not both required, you need to pass one of them.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();
var fiatCurrency = fiatCurrency_example; // String | Fiat currency symbol. Example: GBP, `INR`, `EUR`, `USD`
var cryptoCurrency = cryptoCurrency_example; // String | Crypto currency symbol. Example: `ETH`, `BTC`, `DAI`
var isBuyOrSell = isBuyOrSell_example; // String | Is BUY or SELL order. Example: `BUY`, `SELL`
var paymentMethodId = paymentMethodId_example; // String | Payment method id. You can get the payment method id from `GET /currencies/crypto-currencies`. Example: `upi`, `credit_debit_card`, `gbp_bank_transfer`
var fiatAmount = 1.2; // double | Amount in fiat currency
var cryptoAmount = 1.2; // double | Amount in crypto currency
var partnerApiKey = partnerApiKey_example; // String | Transak public api key

try { 
    var result = api_instance.currenciesGetPrice(fiatCurrency, cryptoCurrency, isBuyOrSell, paymentMethodId, fiatAmount, cryptoAmount, partnerApiKey);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->currenciesGetPrice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fiatCurrency** | **String**| Fiat currency symbol. Example: GBP, &#x60;INR&#x60;, &#x60;EUR&#x60;, &#x60;USD&#x60; | 
 **cryptoCurrency** | **String**| Crypto currency symbol. Example: &#x60;ETH&#x60;, &#x60;BTC&#x60;, &#x60;DAI&#x60; | 
 **isBuyOrSell** | **String**| Is BUY or SELL order. Example: &#x60;BUY&#x60;, &#x60;SELL&#x60; | 
 **paymentMethodId** | **String**| Payment method id. You can get the payment method id from &#x60;GET /currencies/crypto-currencies&#x60;. Example: &#x60;upi&#x60;, &#x60;credit_debit_card&#x60;, &#x60;gbp_bank_transfer&#x60; | [optional] 
 **fiatAmount** | **double**| Amount in fiat currency | [optional] 
 **cryptoAmount** | **double**| Amount in crypto currency | [optional] 
 **partnerApiKey** | **String**| Transak public api key | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currenciesVerifyWalletAddress**
> InlineResponse2008 currenciesVerifyWalletAddress(walletAddress, cryptoCurrency)

4. Verify wallet address

Verify a crypto wallet address

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();
var walletAddress = walletAddress_example; // String | Crypto wallet address
var cryptoCurrency = cryptoCurrency_example; // String | Crypto currency symbol. Example: `BTC`, `ETH`

try { 
    var result = api_instance.currenciesVerifyWalletAddress(walletAddress, cryptoCurrency);
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->currenciesVerifyWalletAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletAddress** | **String**| Crypto wallet address | 
 **cryptoCurrency** | **String**| Crypto currency symbol. Example: &#x60;BTC&#x60;, &#x60;ETH&#x60; | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fiatCurrenciesList**
> InlineResponse2009 fiatCurrenciesList()

2. Get fiat currencies

Get the supporting fiat currencies list

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CurrenciesApi();

try { 
    var result = api_instance.fiatCurrenciesList();
    print(result);
} catch (e) {
    print("Exception when calling CurrenciesApi->fiatCurrenciesList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

