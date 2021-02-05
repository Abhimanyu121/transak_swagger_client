# swagger.model.FileV2

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | The key of the file that you have generated using the GET &#x60;/user/files/presignedurl&#x60; endpoint | [optional] [default to null]
**url** | **String** | A URL to view the document | [optional] [default to null]
**documentId** | **String** | Document id, examples are passport, driving_licence, etc | [optional] [default to null]
**type** | **String** | Document type, types are [&#x60;idProof&#x60;, &#x60;addressProof&#x60;, &#x60;incomeProof&#x60;, &#x60;selfie&#x60;] | [optional] [default to null]
**side** | **String** | Document side, one of [&#x60;front&#x60;, &#x60;back&#x60;] | [optional] [default to null]
**country** | **String** | Document issuing country | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


