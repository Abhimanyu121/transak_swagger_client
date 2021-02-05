part of swagger.api;

class ErrorV2 {
  
  ErrorV2Error error = null;
  
  ErrorV2();

  @override
  String toString() {
    return 'ErrorV2[error=$error, ]';
  }

  ErrorV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error =
      
      
      new ErrorV2Error.fromJson(json['error'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'error': error
     };
  }

  static List<ErrorV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorV2>() : json.map((value) => new ErrorV2.fromJson(value)).toList();
  }

  static Map<String, ErrorV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorV2.fromJson(value));
    }
    return map;
  }
}

