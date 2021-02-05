# swagger.model.UserV2Response

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | User&#39;s Id | [default to null]
**firstName** | **String** | User&#39;s first name | [optional] [default to null]
**lastName** | **String** | User&#39;s last name | [optional] [default to null]
**email** | **String** | User&#39;s email address | [optional] [default to null]
**mobileNumber** | **String** | User&#39;s mobile number | [optional] [default to null]
**emailVerified** | **bool** | Indicates if a user verified their email | [optional] [default to null]
**dob** | **String** | User&#39;s date of birth | [optional] [default to null]
**address** | [**UserV2ResponseAddress**](UserV2ResponseAddress.md) |  | [optional] [default to null]
**lastLogin** | [**UserV2ResponseLastLogin**](UserV2ResponseLastLogin.md) |  | [optional] [default to null]
**kycStatus** | **String** | KYC Status, one of: [&#39;NOT_SUBMITTED&#39;, &#39;SUBMITTED&#39;, &#39;APPROVED&#39;, &#39;REJECTED&#39;] | [optional] [default to null]
**status** | **String** | User status, one of [&#39;active&#39;, &#39;disabled&#39;] | [default to null]
**kyc** | [**UserV2ResponseKyc**](UserV2ResponseKyc.md) |  | [default to null]
**updatedAt** | **String** | Last date of updating a user | [optional] [default to null]
**billingAddress** | [**UserV2ResponseBillingAddress**](UserV2ResponseBillingAddress.md) |  | [optional] [default to null]
**banks** | [**List&lt;Object&gt;**](Object.md) | User&#39;s bank accounts | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


