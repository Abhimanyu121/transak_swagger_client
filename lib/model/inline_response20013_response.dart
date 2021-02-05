part of swagger.api;

class InlineResponse20013Response {
  /* Wallet reservation id */
  String id = null;
  
  InlineResponse20013Response();

  @override
  String toString() {
    return 'InlineResponse20013Response[id=$id, ]';
  }

  InlineResponse20013Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<InlineResponse20013Response> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013Response>() : json.map((value) => new InlineResponse20013Response.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013Response> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013Response.fromJson(value));
    }
    return map;
  }
}

