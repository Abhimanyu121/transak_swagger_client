part of swagger.api;

class KycStatusV2ResponseKyc {
  
  KycStatusV2ResponseKycL1 l1 = null;
  

  KycStatusV2ResponseKycL2 l2 = null;
  
  KycStatusV2ResponseKyc();

  @override
  String toString() {
    return 'KycStatusV2ResponseKyc[l1=$l1, l2=$l2, ]';
  }

  KycStatusV2ResponseKyc.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    l1 =
      
      
      new KycStatusV2ResponseKycL1.fromJson(json['l1'])
;
    l2 =
      
      
      new KycStatusV2ResponseKycL2.fromJson(json['l2'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'l1': l1,
      'l2': l2
     };
  }

  static List<KycStatusV2ResponseKyc> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycStatusV2ResponseKyc>() : json.map((value) => new KycStatusV2ResponseKyc.fromJson(value)).toList();
  }

  static Map<String, KycStatusV2ResponseKyc> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycStatusV2ResponseKyc>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycStatusV2ResponseKyc.fromJson(value));
    }
    return map;
  }
}

