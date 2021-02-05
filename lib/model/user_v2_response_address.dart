part of swagger.api;

class UserV2ResponseAddress {
  /* address line 1 */
  String addressLine1 = null;
  
/* address line 2 */
  String addressLine2 = null;
  
/* state */
  String state = null;
  
/* city */
  String city = null;
  
/* Postal/Zip code */
  String postCode = null;
  
/* Country */
  String country = null;
  
/* Country code, in Alpha2 */
  String countryCode = null;
  
  UserV2ResponseAddress();

  @override
  String toString() {
    return 'UserV2ResponseAddress[addressLine1=$addressLine1, addressLine2=$addressLine2, state=$state, city=$city, postCode=$postCode, country=$country, countryCode=$countryCode, ]';
  }

  UserV2ResponseAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addressLine1 =
        json['addressLine1']
    ;
    addressLine2 =
        json['addressLine2']
    ;
    state =
        json['state']
    ;
    city =
        json['city']
    ;
    postCode =
        json['postCode']
    ;
    country =
        json['country']
    ;
    countryCode =
        json['countryCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'state': state,
      'city': city,
      'postCode': postCode,
      'country': country,
      'countryCode': countryCode
     };
  }

  static List<UserV2ResponseAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserV2ResponseAddress>() : json.map((value) => new UserV2ResponseAddress.fromJson(value)).toList();
  }

  static Map<String, UserV2ResponseAddress> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserV2ResponseAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserV2ResponseAddress.fromJson(value));
    }
    return map;
  }
}

