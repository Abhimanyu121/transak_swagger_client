# swagger.model.FormV2Fields

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | field id | [optional] [default to null]
**name** | **String** | field name, e.g First Name | [optional] [default to null]
**type** | **String** | field type, types are [text, number, document, hidden, date] | [optional] [default to null]
**value** | **String** | field value, by default if any field value was already provided for a user, it will be represented here | [optional] [default to null]
**regex** | **String** | regular expression to validate the field | [optional] [default to null]
**options** | [**List&lt;FormV2Options&gt;**](FormV2Options.md) | if field type is select, a list of options will be passed here | [optional] [default to []]
**acceptableFormats** | [**List&lt;FormV2AcceptableFormats&gt;**](FormV2AcceptableFormats.md) | if field type is document, a list of acceptable format will be passed here | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


