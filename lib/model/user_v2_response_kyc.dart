part of swagger.api;

class UserV2ResponseKyc {
  
  UserV2ResponseKycL1 l1 = null;
  

  UserV2ResponseKycL2 l2 = null;
  
  UserV2ResponseKyc();

  @override
  String toString() {
    return 'UserV2ResponseKyc[l1=$l1, l2=$l2, ]';
  }

  UserV2ResponseKyc.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    l1 =
      
      
      new UserV2ResponseKycL1.fromJson(json['l1'])
;
    l2 =
      
      
      new UserV2ResponseKycL2.fromJson(json['l2'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'l1': l1,
      'l2': l2
     };
  }

  static List<UserV2ResponseKyc> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserV2ResponseKyc>() : json.map((value) => new UserV2ResponseKyc.fromJson(value)).toList();
  }

  static Map<String, UserV2ResponseKyc> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserV2ResponseKyc>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserV2ResponseKyc.fromJson(value));
    }
    return map;
  }
}

