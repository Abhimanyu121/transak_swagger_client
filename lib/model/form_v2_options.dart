part of swagger.api;

class FormV2Options {
  /* option name, e.g Driver's License */
  String name = null;
  
/* option value, e.g driving_licence */
  String value = null;
  
  FormV2Options();

  @override
  String toString() {
    return 'FormV2Options[name=$name, value=$value, ]';
  }

  FormV2Options.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value
     };
  }

  static List<FormV2Options> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormV2Options>() : json.map((value) => new FormV2Options.fromJson(value)).toList();
  }

  static Map<String, FormV2Options> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormV2Options>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormV2Options.fromJson(value));
    }
    return map;
  }
}

