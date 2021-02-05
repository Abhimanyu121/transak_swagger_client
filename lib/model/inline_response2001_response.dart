part of swagger.api;

class InlineResponse2001Response {
  /* access token to be used for future requests to authenticate the user */
  String id = null;
  
/* token expiration time */
  String ttl = null;
  
/* date of issuing the token */
  String created = null;
  
/* user id */
  String userId = null;
  
  InlineResponse2001Response();

  @override
  String toString() {
    return 'InlineResponse2001Response[id=$id, ttl=$ttl, created=$created, userId=$userId, ]';
  }

  InlineResponse2001Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    ttl =
        json['ttl']
    ;
    created =
        json['created']
    ;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ttl': ttl,
      'created': created,
      'userId': userId
     };
  }

  static List<InlineResponse2001Response> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2001Response>() : json.map((value) => new InlineResponse2001Response.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001Response> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2001Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2001Response.fromJson(value));
    }
    return map;
  }
}

