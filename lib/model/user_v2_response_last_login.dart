part of swagger.api;

class UserV2ResponseLastLogin {
  /* Date of last login */
  String date = null;
  
/* User Id */
  String userId = null;
  
/* Location */
  String location = null;
  
  UserV2ResponseLastLogin();

  @override
  String toString() {
    return 'UserV2ResponseLastLogin[date=$date, userId=$userId, location=$location, ]';
  }

  UserV2ResponseLastLogin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date =
        json['date']
    ;
    userId =
        json['userId']
    ;
    location =
        json['location']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'userId': userId,
      'location': location
     };
  }

  static List<UserV2ResponseLastLogin> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserV2ResponseLastLogin>() : json.map((value) => new UserV2ResponseLastLogin.fromJson(value)).toList();
  }

  static Map<String, UserV2ResponseLastLogin> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserV2ResponseLastLogin>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserV2ResponseLastLogin.fromJson(value));
    }
    return map;
  }
}

