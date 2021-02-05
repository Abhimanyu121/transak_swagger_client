part of swagger.api;

class KycStatusV2ResponseKycL2 {
  /* User kyc level 2 status */
  String status = null;
  
  KycStatusV2ResponseKycL2();

  @override
  String toString() {
    return 'KycStatusV2ResponseKycL2[status=$status, ]';
  }

  KycStatusV2ResponseKycL2.fromJson(Map<String, dynamic> json) {
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

  static List<KycStatusV2ResponseKycL2> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycStatusV2ResponseKycL2>() : json.map((value) => new KycStatusV2ResponseKycL2.fromJson(value)).toList();
  }

  static Map<String, KycStatusV2ResponseKycL2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycStatusV2ResponseKycL2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycStatusV2ResponseKycL2.fromJson(value));
    }
    return map;
  }
}

