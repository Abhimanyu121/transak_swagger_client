part of swagger.api;

class ErrorV2Error {
  
  num statusCode = null;
  

  String name = null;
  

  String message = null;
  

  String code = null;
  
  ErrorV2Error();

  @override
  String toString() {
    return 'ErrorV2Error[statusCode=$statusCode, name=$name, message=$message, code=$code, ]';
  }

  ErrorV2Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    statusCode =
        json['statusCode']
    ;
    name =
        json['name']
    ;
    message =
        json['message']
    ;
    code =
        json['code']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'name': name,
      'message': message,
      'code': code
     };
  }

  static List<ErrorV2Error> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorV2Error>() : json.map((value) => new ErrorV2Error.fromJson(value)).toList();
  }

  static Map<String, ErrorV2Error> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorV2Error>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorV2Error.fromJson(value));
    }
    return map;
  }
}

