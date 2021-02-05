part of swagger.api;

class InlineResponse2005Response {
  /* Action status, if success, value should be allways `deleted` */
  String status = null;
  
  InlineResponse2005Response();

  @override
  String toString() {
    return 'InlineResponse2005Response[status=$status, ]';
  }

  InlineResponse2005Response.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse2005Response> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2005Response>() : json.map((value) => new InlineResponse2005Response.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005Response> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2005Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2005Response.fromJson(value));
    }
    return map;
  }
}

