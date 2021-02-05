part of swagger.api;

class BankV2 {
  /* Bank id */
  String id = null;
  
/* Bank creation date */
  String createdAt = null;
  
/* User id */
  String userId = null;
  
/* Bank holder name */
  String holderName = null;
  
/* ReservationId using `POST /orders/wallet-reserve` */
  String reservationId = null;
  
/* Type of bank details. Example: `iban`, `accountNumber`, `upi` */
  String detailsType = null;
  
/* Bank account number. This field is required if the `detailsType` is `accountNumber` */
  String accountNumber = null;
  
/* Sort code of United Kingdom bank. This field is required if the `detailsType` is `accountNumber` */
  String sortCode = null;
  
/* SWIFT BIC of the bank.  This field is required if the `detailsType` is `iban` */
  String swiftbic = null;
  
/* IBAN for the SEPA transfer. This field is required if the `detailsType` is `iban` */
  String iban = null;
  
/* IFSC Code of Indian bank. This field is required if the `detailsType` is `accountNumber` */
  String ifscCode = null;
  
/* UPI id of Indian bank. This field is required if the `detailsType` is `upi` */
  String upiId = null;
  
/* Full address if the bank. This field is required if the `detailsType` is `iban` */
  String address = null;
  
  BankV2();

  @override
  String toString() {
    return 'BankV2[id=$id, createdAt=$createdAt, userId=$userId, holderName=$holderName, reservationId=$reservationId, detailsType=$detailsType, accountNumber=$accountNumber, sortCode=$sortCode, swiftbic=$swiftbic, iban=$iban, ifscCode=$ifscCode, upiId=$upiId, address=$address, ]';
  }

  BankV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    createdAt =
        json['createdAt']
    ;
    userId =
        json['userId']
    ;
    holderName =
        json['holderName']
    ;
    reservationId =
        json['reservationId']
    ;
    detailsType =
        json['detailsType']
    ;
    accountNumber =
        json['accountNumber']
    ;
    sortCode =
        json['sortCode']
    ;
    swiftbic =
        json['swiftbic']
    ;
    iban =
        json['iban']
    ;
    ifscCode =
        json['ifscCode']
    ;
    upiId =
        json['upiId']
    ;
    address =
        json['address']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'userId': userId,
      'holderName': holderName,
      'reservationId': reservationId,
      'detailsType': detailsType,
      'accountNumber': accountNumber,
      'sortCode': sortCode,
      'swiftbic': swiftbic,
      'iban': iban,
      'ifscCode': ifscCode,
      'upiId': upiId,
      'address': address
     };
  }

  static List<BankV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<BankV2>() : json.map((value) => new BankV2.fromJson(value)).toList();
  }

  static Map<String, BankV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BankV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BankV2.fromJson(value));
    }
    return map;
  }
}

