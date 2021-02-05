part of swagger.api;

class CountryV2 {
  String alpha2 = null;

  String alpha3 = null;

  bool isAllowed = null;

  bool isLightKycAllowed = null;

  String name = null;

  List<Object> supportedDocuments = [];

  CountryV2();

  @override
  String toString() {
    return 'CountryV2[alpha2=$alpha2, alpha3=$alpha3, isAllowed=$isAllowed, isLightKycAllowed=$isLightKycAllowed, name=$name, supportedDocuments=$supportedDocuments, ]';
  }

  CountryV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alpha2 = json['alpha2'];
    alpha3 = json['alpha3'];
    isAllowed = json['isAllowed'];
    isLightKycAllowed = json['isLightKycAllowed'];
    name = json['name'];
    supportedDocuments = listFromJson(json['supportedDocuments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'alpha2': alpha2,
      'alpha3': alpha3,
      'isAllowed': isAllowed,
      'isLightKycAllowed': isLightKycAllowed,
      'name': name,
      'supportedDocuments': supportedDocuments
    };
  }

  static List<CountryV2> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CountryV2>()
        : json.map((value) => new CountryV2.fromJson(value)).toList();
  }

  static Map<String, CountryV2> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CountryV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CountryV2.fromJson(value));
    }
    return map;
  }
}
