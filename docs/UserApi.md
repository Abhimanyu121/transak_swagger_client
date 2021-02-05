# swagger.api.UserApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://staging-api.transak.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAuthEmailLogin**](UserApi.md#userAuthEmailLogin) | **POST** /user/email/send | 1. Login or Signup
[**userAuthEmailVerify**](UserApi.md#userAuthEmailVerify) | **POST** /user/email/verify | 2. Verify email
[**userDoc**](UserApi.md#userDoc) | **POST** /user/files | 7. Add kyc document
[**userGetForms**](UserApi.md#userGetForms) | **GET** /user/kyc/forms | 5. Get KYC forms
[**userLogout**](UserApi.md#userLogout) | **POST** /user/logout | 9. Logout
[**userPatchUser**](UserApi.md#userPatchUser) | **PATCH** /user | 4. Update user
[**userProfileDataGetUser**](UserApi.md#userProfileDataGetUser) | **GET** /user | 3. Get user
[**userSignedRequest**](UserApi.md#userSignedRequest) | **GET** /user/files/url | 6. Upload kyc document
[**userSubmitKyc**](UserApi.md#userSubmitKyc) | **POST** /user/kyc/submit | 8. Submit user&#39;s KYC


# **userAuthEmailLogin**
> InlineResponse200 userAuthEmailLogin(contentType, reservationId, email)

1. Login or Signup

Send one time verification code to user email address  > if no user associated with the provided email, a new user will be created, and a verification code will be sent to the email

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var contentType = contentType_example; // String | 
var reservationId = reservationId_example; // String | order reservation id
var email = email_example; // String | user's email address

try { 
    var result = api_instance.userAuthEmailLogin(contentType, reservationId, email);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userAuthEmailLogin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**|  | [default to application/x-www-form-urlencoded]
 **reservationId** | **String**| order reservation id | 
 **email** | **String**| user&#39;s email address | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userAuthEmailVerify**
> InlineResponse2001 userAuthEmailVerify(email, emailVerificationCode, reservationId)

2. Verify email

Verify user's email address  Users need to pass the verification code that is sent to their email, on success, they'll get an accessToken that can be used with the next requests.   

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var email = email_example; // String | Enter the email id
var emailVerificationCode = emailVerificationCode_example; // String | Enter the email verification code
var reservationId = reservationId_example; // String | pass your reservation id

try { 
    var result = api_instance.userAuthEmailVerify(email, emailVerificationCode, reservationId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userAuthEmailVerify: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Enter the email id | 
 **emailVerificationCode** | **String**| Enter the email verification code | 
 **reservationId** | **String**| pass your reservation id | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDoc**
> InlineResponse2003 userDoc(key, documentId, type, accessToken, side, countryCode)

7. Add kyc document

Use this endpoint to update user with an uploaded file  Please read [File Upload](docs/user/3.file-upload.md) to know more about uploading process.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var key = key_example; // String | The key of the file that you have generated using the GET /user/files/presignedurl endpoint
var documentId = documentId_example; // String | Document id, examples are passport, driving_licence, etc
var type = type_example; // String | Document type, types are `idProof`, `addressProof`, `incomeProof`, `selfie`
var accessToken = accessToken_example; // String | 
var side = side_example; // String | Document side, one of `front`, `back`
var countryCode = countryCode_example; // String | Document issuing country alpha2 code

try { 
    var result = api_instance.userDoc(key, documentId, type, accessToken, side, countryCode);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userDoc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the file that you have generated using the GET /user/files/presignedurl endpoint | 
 **documentId** | **String**| Document id, examples are passport, driving_licence, etc | 
 **type** | **String**| Document type, types are &#x60;idProof&#x60;, &#x60;addressProof&#x60;, &#x60;incomeProof&#x60;, &#x60;selfie&#x60; | 
 **accessToken** | **String**|  | 
 **side** | **String**| Document side, one of &#x60;front&#x60;, &#x60;back&#x60; | [optional] [default to front]
 **countryCode** | **String**| Document issuing country alpha2 code | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetForms**
> KycFormsV2 userGetForms(reservationId)

5. Get KYC forms

Get all required forms for a user to complete their KYC 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var reservationId = reservationId_example; // String | pass your reservation id

try { 
    var result = api_instance.userGetForms(reservationId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetForms: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservationId** | **String**| pass your reservation id | 

### Return type

[**KycFormsV2**](KycFormsV2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLogout**
> userLogout(accessToken)

9. Logout

Logout a user with access token.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var accessToken = accessToken_example; // String | 

try { 
    api_instance.userLogout(accessToken);
} catch (e) {
    print("Exception when calling UserApi->userLogout: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPatchUser**
> UserV2 userPatchUser(reservationId, accessToken, firstName, lastName, dob, mobileNumber, addressLine1, addressLine2, state, city, postCode, country, isBillingAddress)

4. Update user

Update user   > Only users with NOT_SUBMITTED or REJECTED kyc could be updated, the only exeption is user Billing address, it can be updated regardless the kyc status. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var reservationId = reservationId_example; // String | pass your reservation id
var accessToken = accessToken_example; // String | 
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
var isBillingAddress = true; // bool | Is user address or billing address

try { 
    var result = api_instance.userPatchUser(reservationId, accessToken, firstName, lastName, dob, mobileNumber, addressLine1, addressLine2, state, city, postCode, country, isBillingAddress);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userPatchUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservationId** | **String**| pass your reservation id | 
 **accessToken** | **String**|  | 
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
 **isBillingAddress** | **bool**| Is user address or billing address | [optional] [default to false]

### Return type

[**UserV2**](UserV2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileDataGetUser**
> UserV2 userProfileDataGetUser(authorization)

3. Get user

Fetch user data

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.userProfileDataGetUser(authorization);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userProfileDataGetUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 

### Return type

[**UserV2**](UserV2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignedRequest**
> InlineResponse2002 userSignedRequest(mimeType, accessToken)

6. Upload kyc document

Get a presigned url to upload a file  Please read [File Upload](docs/Tutorials/3.file-upload.md) to know more about uploading process.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var mimeType = mimeType_example; // String | The MIME type of the file you wish to upload. the supported types are image/jpeg, image/png and application/pdf.
var accessToken = accessToken_example; // String | Access Token

try { 
    var result = api_instance.userSignedRequest(mimeType, accessToken);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userSignedRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mimeType** | **String**| The MIME type of the file you wish to upload. the supported types are image/jpeg, image/png and application/pdf. | 
 **accessToken** | **String**| Access Token | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSubmitKyc**
> KycStatusV2 userSubmitKyc(accessToken)

8. Submit user's KYC

Call this endpoint to start validating a user KYC after submitting all the required forms. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var accessToken = accessToken_example; // String | 

try { 
    var result = api_instance.userSubmitKyc(accessToken);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userSubmitKyc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String**|  | 

### Return type

[**KycStatusV2**](KycStatusV2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

