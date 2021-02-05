part of swagger.api;

class FormV2Tabs {
  /* tab id, could be used by the front end to dynamically render list of arrays, select between multi tabs, get the active tab fields' values */
  String id = null;
  
/* name of the tab, useful to show a title of the tab for the end user. */
  String name = null;
  
/* message for the end user about the tab, generally it is a description contains guidance for the user about what they are required to submit, or any other useful information. */
  String message = null;
  
/* list of the fields, like first name and last name */
  List<FormV2Fields> fields = [];
  
  FormV2Tabs();

  @override
  String toString() {
    return 'FormV2Tabs[id=$id, name=$name, message=$message, fields=$fields, ]';
  }

  FormV2Tabs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    message =
        json['message']
    ;
    fields =
      FormV2Fields.listFromJson(json['fields'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'message': message,
      'fields': fields
     };
  }

  static List<FormV2Tabs> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormV2Tabs>() : json.map((value) => new FormV2Tabs.fromJson(value)).toList();
  }

  static Map<String, FormV2Tabs> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormV2Tabs>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormV2Tabs.fromJson(value));
    }
    return map;
  }
}

