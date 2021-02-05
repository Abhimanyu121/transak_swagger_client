part of swagger.api;

class FormV2Fields {
  /* field id */
  String id = null;
  
/* field name, e.g First Name */
  String name = null;
  
/* field type, types are [text, number, document, hidden, date] */
  String type = null;
  
/* field value, by default if any field value was already provided for a user, it will be represented here */
  String value = null;
  
/* regular expression to validate the field */
  String regex = null;
  
/* if field type is select, a list of options will be passed here */
  List<FormV2Options> options = [];
  
/* if field type is document, a list of acceptable format will be passed here */
  List<FormV2AcceptableFormats> acceptableFormats = [];
  
  FormV2Fields();

  @override
  String toString() {
    return 'FormV2Fields[id=$id, name=$name, type=$type, value=$value, regex=$regex, options=$options, acceptableFormats=$acceptableFormats, ]';
  }

  FormV2Fields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    type =
        json['type']
    ;
    value =
        json['value']
    ;
    regex =
        json['regex']
    ;
    options =
      FormV2Options.listFromJson(json['options'])
;
    acceptableFormats =
      FormV2AcceptableFormats.listFromJson(json['acceptableFormats'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'value': value,
      'regex': regex,
      'options': options,
      'acceptableFormats': acceptableFormats
     };
  }

  static List<FormV2Fields> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormV2Fields>() : json.map((value) => new FormV2Fields.fromJson(value)).toList();
  }

  static Map<String, FormV2Fields> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormV2Fields>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormV2Fields.fromJson(value));
    }
    return map;
  }
}

