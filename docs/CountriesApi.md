# swagger.api.CountriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://staging-api.transak.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countriesList**](CountriesApi.md#countriesList) | **GET** /countries | 1. Get supported countries


# **countriesList**
> InlineResponse20010 countriesList()

1. Get supported countries

Get the countries list

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();

try { 
    var result = api_instance.countriesList();
    print(result);
} catch (e) {
    print("Exception when calling CountriesApi->countriesList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

