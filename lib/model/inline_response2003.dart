part of swagger.api;

class InlineResponse2003 {
  
  FileV2 user = null;
  
  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[user=$user, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
      
      
      new FileV2.fromJson(json['user'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user
     };
  }

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003>() : json.map((value) => new InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2003>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2003.fromJson(value));
    }
    return map;
  }
}

