# swagger.api.PartnerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://staging-api.transak.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**partnerGetOrder**](PartnerApi.md#partnerGetOrder) | **GET** /partners/order/{orderId} | Get the order details using the partner API secret
[**partnerGetOrders**](PartnerApi.md#partnerGetOrders) | **GET** /partners/orders | Get all the orders for the partner
[**partnerGetPartnerInfo**](PartnerApi.md#partnerGetPartnerInfo) | **GET** /partners/{partnerApiKey} | Get Partner Info
[**partnerGetPastWebhooks**](PartnerApi.md#partnerGetPastWebhooks) | **GET** /partners/webhooks | Get the past webhook trigger responses
[**partnerProfileData**](PartnerApi.md#partnerProfileData) | **GET** /partners | Get partner data
[**partnerTestWebhook**](PartnerApi.md#partnerTestWebhook) | **POST** /partners/test-webhook | Test your webhook integration
[**partnerUpdateWebhookURL**](PartnerApi.md#partnerUpdateWebhookURL) | **POST** /partners/update-webhook-url | Update your webhook URL


# **partnerGetOrder**
> InlineResponse2006 partnerGetOrder(partnerAPISecret, orderId)

Get the order details using the partner API secret

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();
var partnerAPISecret = partnerAPISecret_example; // String | Enter your API SECRET
var orderId = orderId_example; // String | User order ID

try { 
    var result = api_instance.partnerGetOrder(partnerAPISecret, orderId);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerGetOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partnerAPISecret** | **String**| Enter your API SECRET | 
 **orderId** | **String**| User order ID | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partnerGetOrders**
> InlineResponse2006 partnerGetOrders(partnerAPISecret, limit, skip)

Get all the orders for the partner

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();
var partnerAPISecret = partnerAPISecret_example; // String | Enter your API SECRET
var limit = 1.2; // double | limits the number of records returned
var skip = 1.2; // double | skip omits the specified number of returned records

try { 
    var result = api_instance.partnerGetOrders(partnerAPISecret, limit, skip);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerGetOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partnerAPISecret** | **String**| Enter your API SECRET | 
 **limit** | **double**| limits the number of records returned | [optional] 
 **skip** | **double**| skip omits the specified number of returned records | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partnerGetPartnerInfo**
> InlineResponse2006 partnerGetPartnerInfo(partnerApiKey)

Get Partner Info

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();
var partnerApiKey = partnerApiKey_example; // String | 

try { 
    var result = api_instance.partnerGetPartnerInfo(partnerApiKey);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerGetPartnerInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partnerApiKey** | **String**|  | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partnerGetPastWebhooks**
> InlineResponse2006 partnerGetPastWebhooks(partnerAPISecret, orderID, eventID)

Get the past webhook trigger responses

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();
var partnerAPISecret = partnerAPISecret_example; // String | enter your API SECRET
var orderID = orderID_example; // String | Filter by order id
var eventID = eventID_example; // String | Filter by event id (ORDER_COMPLETED, ORDER_CANCELLED, ORDER_CREATED)

try { 
    var result = api_instance.partnerGetPastWebhooks(partnerAPISecret, orderID, eventID);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerGetPastWebhooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partnerAPISecret** | **String**| enter your API SECRET | 
 **orderID** | **String**| Filter by order id | [optional] 
 **eventID** | **String**| Filter by event id (ORDER_COMPLETED, ORDER_CANCELLED, ORDER_CREATED) | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partnerProfileData**
> InlineResponse2006 partnerProfileData()

Get partner data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();

try { 
    var result = api_instance.partnerProfileData();
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerProfileData: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partnerTestWebhook**
> InlineResponse2006 partnerTestWebhook(partnerAPISecret)

Test your webhook integration

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();
var partnerAPISecret = partnerAPISecret_example; // String | enter your API SECRET

try { 
    var result = api_instance.partnerTestWebhook(partnerAPISecret);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerTestWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partnerAPISecret** | **String**| enter your API SECRET | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partnerUpdateWebhookURL**
> InlineResponse2006 partnerUpdateWebhookURL(partnerAPISecret, webhookURL)

Update your webhook URL

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PartnerApi();
var partnerAPISecret = partnerAPISecret_example; // String | Enter your API SECRET
var webhookURL = webhookURL_example; // String | Enter your new webhook URL

try { 
    var result = api_instance.partnerUpdateWebhookURL(partnerAPISecret, webhookURL);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->partnerUpdateWebhookURL: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partnerAPISecret** | **String**| Enter your API SECRET | 
 **webhookURL** | **String**| Enter your new webhook URL | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

