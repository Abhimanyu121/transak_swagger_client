# swagger.model.FormV2Tabs

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | tab id, could be used by the front end to dynamically render list of arrays, select between multi tabs, get the active tab fields&#39; values | [optional] [default to null]
**name** | **String** | name of the tab, useful to show a title of the tab for the end user. | [optional] [default to null]
**message** | **String** | message for the end user about the tab, generally it is a description contains guidance for the user about what they are required to submit, or any other useful information. | [optional] [default to null]
**fields** | [**List&lt;FormV2Fields&gt;**](FormV2Fields.md) | list of the fields, like first name and last name | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


