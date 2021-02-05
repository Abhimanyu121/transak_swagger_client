part of swagger.api;

class OrderFormsV2 {
  
  List<FormV2> forms = [];
  
  OrderFormsV2();

  @override
  String toString() {
    return 'OrderFormsV2[forms=$forms, ]';
  }

  OrderFormsV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forms =
      FormV2.listFromJson(json['forms'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'forms': forms
     };
  }

  static List<OrderFormsV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderFormsV2>() : json.map((value) => new OrderFormsV2.fromJson(value)).toList();
  }

  static Map<String, OrderFormsV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderFormsV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderFormsV2.fromJson(value));
    }
    return map;
  }
}

