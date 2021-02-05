# swagger.model.FormV2

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formId** | **String** | form id | [optional] [default to null]
**formName** | **String** | form name/title | [optional] [default to null]
**message** | **String** | message to a user, could be any heping information about the form | [optional] [default to null]
**step** | **String** | each form has a step, which indicate the sequance of the forms | [optional] [default to null]
**endpoint** | [**FormV2Endpoint**](FormV2Endpoint.md) |  | [optional] [default to null]
**tabs** | [**List&lt;FormV2Tabs&gt;**](FormV2Tabs.md) | tabs is a list of possible ways that a user can choose between to pass this form, in some cases there is only one way, say in personal details form, other cases like uploading document for idProof, or use an automated kyc from a third party. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


