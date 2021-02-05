part of swagger.api;

class KycStatusV2ResponseKycL1 {
  /* User kyc level 1 status */
  String status = null;
  
  KycStatusV2ResponseKycL1();

  @override
  String toString() {
    return 'KycStatusV2ResponseKycL1[status=$status, ]';
  }

  KycStatusV2ResponseKycL1.fromJson(Map<String, dynamic> json) {
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

  static List<KycStatusV2ResponseKycL1> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycStatusV2ResponseKycL1>() : json.map((value) => new KycStatusV2ResponseKycL1.fromJson(value)).toList();
  }

  static Map<String, KycStatusV2ResponseKycL1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycStatusV2ResponseKycL1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycStatusV2ResponseKycL1.fromJson(value));
    }
    return map;
  }
}

