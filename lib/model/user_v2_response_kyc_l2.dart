part of swagger.api;

class UserV2ResponseKycL2 {
  /* KYC level 2 status, one of: ['NOT_SUBMITTED', 'SUBMITTED', 'APPROVED', 'REJECTED'] */
  String status = null;
  
  UserV2ResponseKycL2();

  @override
  String toString() {
    return 'UserV2ResponseKycL2[status=$status, ]';
  }

  UserV2ResponseKycL2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status =
        json['status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status
     };
  }

  static List<UserV2ResponseKycL2> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserV2ResponseKycL2>() : json.map((value) => new UserV2ResponseKycL2.fromJson(value)).toList();
  }

  static Map<String, UserV2ResponseKycL2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserV2ResponseKycL2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserV2ResponseKycL2.fromJson(value));
    }
    return map;
  }
}

