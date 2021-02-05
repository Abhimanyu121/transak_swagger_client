part of swagger.api;

class BanksV2 {
    BanksV2();

  @override
  String toString() {
    return 'BanksV2[]';
  }

  BanksV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<BanksV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<BanksV2>() : json.map((value) => new BanksV2.fromJson(value)).toList();
  }

  static Map<String, BanksV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BanksV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BanksV2.fromJson(value));
    }
    return map;
  }
}

