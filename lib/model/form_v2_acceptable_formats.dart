part of swagger.api;

class FormV2AcceptableFormats {
  /* format name, e.g png */
  String name = null;
  
/* format type, e.g image/png */
  String type = null;
  
  FormV2AcceptableFormats();

  @override
  String toString() {
    return 'FormV2AcceptableFormats[name=$name, type=$type, ]';
  }

  FormV2AcceptableFormats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type
     };
  }

  static List<FormV2AcceptableFormats> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormV2AcceptableFormats>() : json.map((value) => new FormV2AcceptableFormats.fromJson(value)).toList();
  }

  static Map<String, FormV2AcceptableFormats> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormV2AcceptableFormats>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormV2AcceptableFormats.fromJson(value));
    }
    return map;
  }
}

