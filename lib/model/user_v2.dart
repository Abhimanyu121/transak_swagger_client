part of swagger.api;

class UserV2 {
  
  UserV2Response response = null;
  
  UserV2();

  @override
  String toString() {
    return 'UserV2[response=$response, ]';
  }

  UserV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    response =
      
      
      new UserV2Response.fromJson(json['response'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'response': response
     };
  }

  static List<UserV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserV2>() : json.map((value) => new UserV2.fromJson(value)).toList();
  }

  static Map<String, UserV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserV2.fromJson(value));
    }
    return map;
  }
}

