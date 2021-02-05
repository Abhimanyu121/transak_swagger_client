part of swagger.api;

class KycFormsV2 {
  
  KycFormsV2CurrentLevel currentLevel = null;
  

  List<FormV2> forms = [];
  
  KycFormsV2();

  @override
  String toString() {
    return 'KycFormsV2[currentLevel=$currentLevel, forms=$forms, ]';
  }

  KycFormsV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currentLevel =
      
      
      new KycFormsV2CurrentLevel.fromJson(json['currentLevel'])
;
    forms =
      FormV2.listFromJson(json['forms'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'currentLevel': currentLevel,
      'forms': forms
     };
  }

  static List<KycFormsV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycFormsV2>() : json.map((value) => new KycFormsV2.fromJson(value)).toList();
  }

  static Map<String, KycFormsV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycFormsV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycFormsV2.fromJson(value));
    }
    return map;
  }
}

