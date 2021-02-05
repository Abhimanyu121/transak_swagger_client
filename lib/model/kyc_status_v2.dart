part of swagger.api;

class KycStatusV2 {
  
  KycStatusV2Response response = null;
  
  KycStatusV2();

  @override
  String toString() {
    return 'KycStatusV2[response=$response, ]';
  }

  KycStatusV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    response =
      
      
      new KycStatusV2Response.fromJson(json['response'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'response': response
     };
  }

  static List<KycStatusV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycStatusV2>() : json.map((value) => new KycStatusV2.fromJson(value)).toList();
  }

  static Map<String, KycStatusV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycStatusV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycStatusV2.fromJson(value));
    }
    return map;
  }
}

