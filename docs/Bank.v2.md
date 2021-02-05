# swagger.model.BankV2

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Bank id | [optional] [default to null]
**createdAt** | **String** | Bank creation date | [optional] [default to null]
**userId** | **String** | User id | [optional] [default to null]
**holderName** | **String** | Bank holder name | [optional] [default to null]
**reservationId** | **String** | ReservationId using &#x60;POST /orders/wallet-reserve&#x60; | [optional] [default to null]
**detailsType** | **String** | Type of bank details. Example: &#x60;iban&#x60;, &#x60;accountNumber&#x60;, &#x60;upi&#x60; | [optional] [default to null]
**accountNumber** | **String** | Bank account number. This field is required if the &#x60;detailsType&#x60; is &#x60;accountNumber&#x60; | [optional] [default to null]
**sortCode** | **String** | Sort code of United Kingdom bank. This field is required if the &#x60;detailsType&#x60; is &#x60;accountNumber&#x60; | [optional] [default to null]
**swiftbic** | **String** | SWIFT BIC of the bank.  This field is required if the &#x60;detailsType&#x60; is &#x60;iban&#x60; | [optional] [default to null]
**iban** | **String** | IBAN for the SEPA transfer. This field is required if the &#x60;detailsType&#x60; is &#x60;iban&#x60; | [optional] [default to null]
**ifscCode** | **String** | IFSC Code of Indian bank. This field is required if the &#x60;detailsType&#x60; is &#x60;accountNumber&#x60; | [optional] [default to null]
**upiId** | **String** | UPI id of Indian bank. This field is required if the &#x60;detailsType&#x60; is &#x60;upi&#x60; | [optional] [default to null]
**address** | **String** | Full address if the bank. This field is required if the &#x60;detailsType&#x60; is &#x60;iban&#x60; | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


