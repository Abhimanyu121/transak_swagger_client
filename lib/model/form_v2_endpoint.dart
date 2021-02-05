part of swagger.api;

class FormV2Endpoint {
  /* endpoint url */
  String path = null;
  
/* request method */
  String method = null;
  
  FormV2Endpoint();

  @override
  String toString() {
    return 'FormV2Endpoint[path=$path, method=$method, ]';
  }

  FormV2Endpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path =
        json['path']
    ;
    method =
        json['method']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'method': method
     };
  }

  static List<FormV2Endpoint> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormV2Endpoint>() : json.map((value) => new FormV2Endpoint.fromJson(value)).toList();
  }

  static Map<String, FormV2Endpoint> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormV2Endpoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormV2Endpoint.fromJson(value));
    }
    return map;
  }
}

