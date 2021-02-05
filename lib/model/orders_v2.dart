part of swagger.api;

class OrdersV2 {
  
  List<OrderV2> response = [];
  
  OrdersV2();

  @override
  String toString() {
    return 'OrdersV2[response=$response, ]';
  }

  OrdersV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    response =
      OrderV2.listFromJson(json['response'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'response': response
     };
  }

  static List<OrdersV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrdersV2>() : json.map((value) => new OrdersV2.fromJson(value)).toList();
  }

  static Map<String, OrdersV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrdersV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrdersV2.fromJson(value));
    }
    return map;
  }
}

