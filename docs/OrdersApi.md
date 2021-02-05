# swagger.api.OrdersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://staging-api.transak.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersCancelOrder**](OrdersApi.md#ordersCancelOrder) | **DELETE** /orders/{orderId} | 5. Cancel existing order
[**ordersCreateOrder**](OrdersApi.md#ordersCreateOrder) | **POST** /orders | 3. Create new order
[**ordersCreateOrderReservation**](OrdersApi.md#ordersCreateOrderReservation) | **POST** /orders/wallet-reserve | 1. Create a new wallet reservation
[**ordersGetForms**](OrdersApi.md#ordersGetForms) | **GET** /orders/forms | 2. Get order forms
[**ordersGetOrder**](OrdersApi.md#ordersGetOrder) | **GET** /orders/{orderId} | 7. Get order by id
[**ordersGetOrders**](OrdersApi.md#ordersGetOrders) | **GET** /orders | 6. Get orders
[**ordersPaymentConfirmation**](OrdersApi.md#ordersPaymentConfirmation) | **POST** /orders/payment-confirmation | 4. Confirm order payment


# **ordersCancelOrder**
> InlineResponse20011 ordersCancelOrder(orderId, accessToken)

5. Cancel existing order

Use this endpoint to cancel an order

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var orderId = orderId_example; // String | 
var accessToken = accessToken_example; // String | 

try { 
    var result = api_instance.ordersCancelOrder(orderId, accessToken);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersCancelOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **accessToken** | **String**|  | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersCreateOrder**
> InlineResponse20011 ordersCreateOrder(reservationId, paymentMethod, bankId)

3. Create new order

Use this resource to create new order from a wallet reservation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var reservationId = reservationId_example; // String | Wallet reservation Id
var paymentMethod = paymentMethod_example; // String | Payment method
var bankId = bankId_example; // String | The bank id that is used to place the order -incase of bank transfer orders

try { 
    var result = api_instance.ordersCreateOrder(reservationId, paymentMethod, bankId);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersCreateOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservationId** | **String**| Wallet reservation Id | 
 **paymentMethod** | **String**| Payment method | 
 **bankId** | **String**| The bank id that is used to place the order -incase of bank transfer orders | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersCreateOrderReservation**
> InlineResponse20013 ordersCreateOrderReservation(contentType, fiatCurrency, cryptoCurrency, fiatAmount, paymentMethod, walletAddress, isBuyOrSell, cryptoAmount, addressAdditionalData, network, quoteId, partnerApiKey, partnerAPISecret, partnerOrderId, partnerCustomerId, redirectURL, email, firstName, lastName, dob, mobileNumber, addressLine1, addressLine2, state, city, postCode, country)

1. Create a new wallet reservation

In this step, users create a wallet reservation order, by providing details about their order, partners also can pass some details like their `API_KEY` etc.  For the sake of simplification, the arguments are grouped into three categories, as follows:  <!-- type: tab title: Order parameters --> #### 1. Order parameters.  A user needs to pass the details of their intended order, like the type and amount of cryptocurrency they'd like to buy, the fiat currency they'd like use to pay for the order.  The following table contains a full list of order arguments.  | Argument | Description | Type | Required | |----|----|----| | fiatCurrency | Fiat currency which the users wants to buy/sell | `string` | `true` | | cryptoCurrency | Crypto currency which the users wants to sell/buy | `string` | `true` | | fiatAmount | Fiat amount that is required to buy/sell | `number` |  `true` | cryptoAmount | Crypto amount that is required to sell/buy | `number` | `false` | | paymentMethod | Payment method id, ex: `gbp_bank_transfer` | `string` | `true` | | walletAddress | Users wallet address  | `string` | `true` | addressAdditionalData | address additional data like memo Id | `string` | `false` | | network | Crypto network id. Example `BEP2`, `ERC-20` | `string` | `false` | | quoteId | Quote ID, Is gotten from [/currencies/price](1.swagger.yaml/paths/~1currencies~1price/get) endpoint | `string` | `false` | | isBuyOrSell | Is `BUY` or `SELL` | `string` | `true` |    <!-- type: tab title: Partner parameters --> #### 2. Partner parameters  Partners can use these arguments depends on their needs, for example, the `redirectURL` where a partner can redirect their users after completing an order.  >  The most important argument is the `partnerApiKey`, this is the connection between a partner and their users  The following table contains a full list of partner arguments.  | Argument | Description | Type | Required | | ----- | ---- | ------ | -------- | | partnerApiKey | The partner API KEY to send the co-brand email | `string` | `false` | | partnerAPISecret | Enter the partner API SECRET | `string` | `false` | | partnerOrderId | Partner order Id | `string` | `false` | | partnerCustomerId | Partner customer Id | `string` | `false` | | redirectURL | A URL to redirect users once they complete an order  | `string` | `false` |   <!-- type: tab title: User parameters --> #### 3. User parameters.  Here, User basic details could be passed, these details will be auto filled for them automatically in the [KYC forms](1.swagger.yaml/paths/~1orders~1forms/get)  The following table contains a full list of order arguments.   | Argument | Description | Type | Required | | ----- | ---- | ------ | -------- | | email | enter the email address | `string` | `false` | | first_name | enter your first_name | `string` | `false` | | last_name | enter your last_name | `string` | `false` | | dob | enter your dob DD-MM-YYYY | `string` | `false` | | mobileNumber | enter your mobileNumber | `string` | `false` | | addressLine1 | enter your address1 | `string` | `false` | | addressLine2 | enter your addressLine2 | `string` | `false` | | state | enter your state | `string` | `false` | | city | enter your city | `string` | `false` | | postCode | enter your postCode | `string` | `false` | | country | enter your country | `string` | `false` |  <!-- type: tab-end -->  The provided arguments in this resource will determine the user KYC and Order Forms, Here are two examples. 1. If paymentMethod is `credit_debit_card` [Order forms](1.swagger.yaml/paths/~1orders~1forms/get) will contain a Billing address form. 2. If paymentMethod is `gbp_bank_transfer` [Order forms](1.swagger.yaml/paths/~1orders~1forms/get) will contain a UK Bank form. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var contentType = contentType_example; // String | 
var fiatCurrency = fiatCurrency_example; // String | Fiat currency which the users wants to buy/sell
var cryptoCurrency = cryptoCurrency_example; // String | Crypto currency which the users wants to sell/buy
var fiatAmount = 1.2; // double | Fiat amount that is required to buy/sell
var paymentMethod = paymentMethod_example; // String | Payment method id, ex: gbp_bank_transfer
var walletAddress = walletAddress_example; // String | Your wallet address
var isBuyOrSell = isBuyOrSell_example; // String | Is BUY or SELL
var cryptoAmount = 1.2; // double | Crypto amount that is required to sell/buy
var addressAdditionalData = addressAdditionalData_example; // String | address additional data like memo id
var network = network_example; // String | Crypto network id. Example BEP2, ERC-20
var quoteId = quoteId_example; // String | Quote ID
var partnerApiKey = partnerApiKey_example; // String | enter the partner API KEY to send the co-brand email
var partnerAPISecret = partnerAPISecret_example; // String | enter the partner API SECRET to complete the KYC on behalf of the user
var partnerOrderId = partnerOrderId_example; // String | Partner order Id
var partnerCustomerId = partnerCustomerId_example; // String | Partner customer Id
var redirectURL = redirectURL_example; // String | Redirect URL
var email = email_example; // String | enter the email address
var firstName = firstName_example; // String | enter your first_name
var lastName = lastName_example; // String | enter your last_name
var dob = dob_example; // String | enter your dob DD-MM-YYYY
var mobileNumber = mobileNumber_example; // String | enter your mobileNumber
var addressLine1 = addressLine1_example; // String | enter your address1
var addressLine2 = addressLine2_example; // String | enter your addressLine2
var state = state_example; // String | enter your state
var city = city_example; // String | enter your city
var postCode = postCode_example; // String | enter your postCode
var country = country_example; // String | enter your country

try { 
    var result = api_instance.ordersCreateOrderReservation(contentType, fiatCurrency, cryptoCurrency, fiatAmount, paymentMethod, walletAddress, isBuyOrSell, cryptoAmount, addressAdditionalData, network, quoteId, partnerApiKey, partnerAPISecret, partnerOrderId, partnerCustomerId, redirectURL, email, firstName, lastName, dob, mobileNumber, addressLine1, addressLine2, state, city, postCode, country);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersCreateOrderReservation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**|  | [default to application/x-www-form-urlencoded]
 **fiatCurrency** | **String**| Fiat currency which the users wants to buy/sell | 
 **cryptoCurrency** | **String**| Crypto currency which the users wants to sell/buy | 
 **fiatAmount** | **double**| Fiat amount that is required to buy/sell | 
 **paymentMethod** | **String**| Payment method id, ex: gbp_bank_transfer | 
 **walletAddress** | **String**| Your wallet address | 
 **isBuyOrSell** | **String**| Is BUY or SELL | 
 **cryptoAmount** | **double**| Crypto amount that is required to sell/buy | [optional] 
 **addressAdditionalData** | **String**| address additional data like memo id | [optional] 
 **network** | **String**| Crypto network id. Example BEP2, ERC-20 | [optional] 
 **quoteId** | **String**| Quote ID | [optional] 
 **partnerApiKey** | **String**| enter the partner API KEY to send the co-brand email | [optional] 
 **partnerAPISecret** | **String**| enter the partner API SECRET to complete the KYC on behalf of the user | [optional] 
 **partnerOrderId** | **String**| Partner order Id | [optional] 
 **partnerCustomerId** | **String**| Partner customer Id | [optional] 
 **redirectURL** | **String**| Redirect URL | [optional] 
 **email** | **String**| enter the email address | [optional] 
 **firstName** | **String**| enter your first_name | [optional] 
 **lastName** | **String**| enter your last_name | [optional] 
 **dob** | **String**| enter your dob DD-MM-YYYY | [optional] 
 **mobileNumber** | **String**| enter your mobileNumber | [optional] 
 **addressLine1** | **String**| enter your address1 | [optional] 
 **addressLine2** | **String**| enter your addressLine2 | [optional] 
 **state** | **String**| enter your state | [optional] 
 **city** | **String**| enter your city | [optional] 
 **postCode** | **String**| enter your postCode | [optional] 
 **country** | **String**| enter your country | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGetForms**
> InlineResponse20012 ordersGetForms(reservationId)

2. Get order forms

After providing details about the intended Order that a user would like to place, in the [wallet-reserve](1.swagger.yaml/paths/~1orders~1wallet-reserve/post) resource, Use the current resource to get the required order forms.  Currenty, there is two type of order forms:  <!-- type: tab title: \"Billing address form\"  --> #### 1. Billing address form  This form will be sent if the `paymentMethod` is `credit_debit_card`.   <!-- type: tab title: \"Bank form\"  -->  #### 2. Bank form  This form will be sent if the `paymentMethod` is one of the following:  `sepa_bank_transfer` `gbp_bank_transfer` `neft_bank_transfer` `interac_e_transfer` `upi`   <!-- type: tab-end  -->   > Forms is dynamically generated based on  [order reservation](1.swagger.yaml/paths/~1orders~1wallet-reserve/post)   The main and most important properties of a form are  #### 1. Form Id A unique Id for the form, it can be used to render the forms dynamically, apply operations to an exact form, like state management, form validation, event handlers, etc.  A [React](https://reactjs.org/) example of dynamic form rendering:  <!--  title: \"formId property example\"  --> ```json ... \"formId\": \"bankDetails\", ... ```  #### 2. Form Name Or Form title!   <!--  title: \"formName property example\"  --> ```json ... \"formId\": \"bankDetails\", // The formName property \"formName\": \"Bank Details\", ... ```   #### 3. Endpoint  Each form has an endpoint property, which tells where to submit the form.  <!--  title: \"endpoint property example\"  --> ```json ... \"formId\": \"bankDetails\", \"formName\": \"Bank Details\", // The endpoint property \"endpoint\": {   \"path\": \"/banks\",   \"method\": \"post\" }, ... ```  #### 4. Tabs Each form has a tabs array, The tabs refers to the possible options for a user to submit a form, one example is the `Bank details` form, for some countries, let's say `India`, you'll find two options in the `tabs` array.  1. IMPS Bank account 2. UPI  <!--  title: \"tabs property example\"  --> ```json \"formId\": \"bankDetails\", \"formName\": \"Bank Details\", \"endpoint\": {   \"path\": \"/banks\",   \"method\": \"post\" }, // The tabs property \"tabs\": [   {     \"name\": \"Bank account\",     \"id\": \"accountNumber\",     \"group\": \"New\",     \"message\": \"Add your bank account details for IMPS payments\",     \"type\": \"tab\",     \"fields\": [...]   },   {     \"name\": \"UPI\",     \"id\": \"upi\",     \"group\": \"New\",     \"message\": \"Add your UPI / VPA ID for UPI payments\",     \"fields\": [...]   } ], ... ``` As you see above, each tab has many properties, like `id`, `name`, `message`, and others.  Most of these properties are clear enough, although you can check the response schema at the end of this resource to know more about them, The one that requires more clarification is the `fields` property, which we'll talk about next.  #### 5. Fields.  For each tab, all arguments are represented in the `fields` array.  The `id` of a field is the argument name itself that to be sent in to the resource. There are other useful properties as well, like `type`, `isRequired`, `value` which has a value if user already provided this field before, so it is like autofilling form, but from the backend, and other properties.  <!--  title: \"fields property example\"  --> ```json \"formId\": \"bankDetails\", \"formName\": \"Bank Details\", \"endpoint\": {   \"path\": \"/banks\",   \"method\": \"post\" }, \"tabs\": [   {     \"name\": \"Bank account\",     \"id\": \"accountNumber\",     \"group\": \"New\",     \"message\": \"Add your bank account details for IMPS payments\",     \"type\": \"tab\",     // The fields property     \"fields\": [       {         \"name\": \"type\",         \"id\": \"detailsType\",         \"type\": \"hidded\",         \"value\": \"accountNumber\"       },       {         \"name\": \"Full name of the account holder\",         \"id\": \"holderName\",         \"type\": \"text\",         \"value\": \" \",         \"regex\": \"^(?!s*$).+\",         \"format\": \"\",         \"isRequired\": false,         \"disabled\": true,         \"placeholder\": \"\"       },       {         \"name\": \"Account Number\",         \"id\": \"accountNumber\",         \"type\": \"number\",         \"value\": \"\",         \"regex\": \"^[0-9][A-Za-z0-9 -]*$\",         \"format\": \"\",         \"isRequired\": true,         \"placeholder\": \"\"       },     ]   },   {     \"name\": \"UPI\",     \"id\": \"upi\",     \"group\": \"New\",     \"message\": \"Add your UPI / VPA ID for UPI payments\",     \"fields\": [...]   } ], ... ``` 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var reservationId = reservationId_example; // String | Wallet reservation id

try { 
    var result = api_instance.ordersGetForms(reservationId);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersGetForms: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservationId** | **String**| Wallet reservation id | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGetOrder**
> InlineResponse20011 ordersGetOrder(orderId, authorization)

7. Get order by id

Use this resource to find an order by its Id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var orderId = orderId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.ordersGetOrder(orderId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersGetOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGetOrders**
> List<OrdersV2> ordersGetOrders(accessToken)

6. Get orders

Use this resource to get all orders for an authenticated user.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var accessToken = accessToken_example; // String | 

try { 
    var result = api_instance.ordersGetOrders(accessToken);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersGetOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String**|  | 

### Return type

[**List<OrdersV2>**](OrdersV2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersPaymentConfirmation**
> InlineResponse20011 ordersPaymentConfirmation(orderId, paymentOptionId)

4. Confirm order payment

Once a user marks order payment as done, Use this resource to confirm the order. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrdersApi();
var orderId = orderId_example; // String | 
var paymentOptionId = paymentOptionId_example; // String | 

try { 
    var result = api_instance.ordersPaymentConfirmation(orderId, paymentOptionId);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersPaymentConfirmation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **paymentOptionId** | **String**|  | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

