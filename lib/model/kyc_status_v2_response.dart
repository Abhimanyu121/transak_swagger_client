part of swagger.api;

class KycStatusV2Response {
  
  KycStatusV2ResponseKyc kyc = null;
  
  KycStatusV2Response();

  @override
  String toString() {
    return 'KycStatusV2Response[kyc=$kyc, ]';
  }

  KycStatusV2Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    kyc =
      
      
      new KycStatusV2ResponseKyc.fromJson(json['kyc'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'kyc': kyc
     };
  }

  static List<KycStatusV2Response> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycStatusV2Response>() : json.map((value) => new KycStatusV2Response.fromJson(value)).toList();
  }

  static Map<String, KycStatusV2Response> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycStatusV2Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycStatusV2Response.fromJson(value));
    }
    return map;
  }
}

