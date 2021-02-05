# swagger.api.BanksApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://staging-api.transak.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**banksAddBankDetails**](BanksApi.md#banksAddBankDetails) | **POST** /banks | 2. Add bank details
[**banksDeleteOne**](BanksApi.md#banksDeleteOne) | **DELETE** /banks | 3. Delete bank details
[**banksFindOneOrMany**](BanksApi.md#banksFindOneOrMany) | **GET** /banks | 1. Get user banks


# **banksAddBankDetails**
> InlineResponse2004 banksAddBankDetails(reservationId, detailsType, accessToken, accountNumber, sortCode, swiftbic, iban, ifscCode, upiId, address)

2. Add bank details

Add bank details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BanksApi();
var reservationId = reservationId_example; // String | ReservationId using `POST /orders/wallet-reserve`
var detailsType = detailsType_example; // String | Type of bank details. Example: `iban`, `accountNumber`, `upi`
var accessToken = accessToken_example; // String | 
var accountNumber = accountNumber_example; // String | Bank account number. This field is required if the `detailsType` is `accountNumber`
var sortCode = sortCode_example; // String | Sort code of United Kingdom bank. This field is required if the `detailsType` is `accountNumber`
var swiftbic = swiftbic_example; // String | SWIFT BIC of the bank.  This field is required if the `detailsType` is `iban`
var iban = iban_example; // String | IBAN for the SEPA transfer. This field is required if the `detailsType` is `iban`
var ifscCode = ifscCode_example; // String | IFSC Code of Indian bank. This field is required if the `detailsType` is `accountNumber`
var upiId = upiId_example; // String | UPI id of Indian bank. This field is required if the `detailsType` is `upi`
var address = address_example; // String | Full address if the bank. This field is required if the `detailsType` is `iban`

try { 
    var result = api_instance.banksAddBankDetails(reservationId, detailsType, accessToken, accountNumber, sortCode, swiftbic, iban, ifscCode, upiId, address);
    print(result);
} catch (e) {
    print("Exception when calling BanksApi->banksAddBankDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservationId** | **String**| ReservationId using &#x60;POST /orders/wallet-reserve&#x60; | 
 **detailsType** | **String**| Type of bank details. Example: &#x60;iban&#x60;, &#x60;accountNumber&#x60;, &#x60;upi&#x60; | 
 **accessToken** | **String**|  | 
 **accountNumber** | **String**| Bank account number. This field is required if the &#x60;detailsType&#x60; is &#x60;accountNumber&#x60; | [optional] 
 **sortCode** | **String**| Sort code of United Kingdom bank. This field is required if the &#x60;detailsType&#x60; is &#x60;accountNumber&#x60; | [optional] 
 **swiftbic** | **String**| SWIFT BIC of the bank.  This field is required if the &#x60;detailsType&#x60; is &#x60;iban&#x60; | [optional] 
 **iban** | **String**| IBAN for the SEPA transfer. This field is required if the &#x60;detailsType&#x60; is &#x60;iban&#x60; | [optional] 
 **ifscCode** | **String**| IFSC Code of Indian bank. This field is required if the &#x60;detailsType&#x60; is &#x60;accountNumber&#x60; | [optional] 
 **upiId** | **String**| UPI id of Indian bank. This field is required if the &#x60;detailsType&#x60; is &#x60;upi&#x60; | [optional] 
 **address** | **String**| Full address if the bank. This field is required if the &#x60;detailsType&#x60; is &#x60;iban&#x60; | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **banksDeleteOne**
> InlineResponse2005 banksDeleteOne(id, accessToken)

3. Delete bank details

Delete bank details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BanksApi();
var id = id_example; // String | delete bank details by id
var accessToken = accessToken_example; // String | 

try { 
    var result = api_instance.banksDeleteOne(id, accessToken);
    print(result);
} catch (e) {
    print("Exception when calling BanksApi->banksDeleteOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| delete bank details by id | 
 **accessToken** | **String**|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **banksFindOneOrMany**
> InlineResponse2004 banksFindOneOrMany(accessToken, id)

1. Get user banks

Get one or all banks for a user  > you can get one bank by sending its id in the query parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BanksApi();
var accessToken = accessToken_example; // String | 
var id = id_example; // String | find bank details by id

try { 
    var result = api_instance.banksFindOneOrMany(accessToken, id);
    print(result);
} catch (e) {
    print("Exception when calling BanksApi->banksFindOneOrMany: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String**|  | 
 **id** | **String**| find bank details by id | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

