part of swagger.api;

class CryptoCurrencyV2Image {
  /*  */
  String large = null;
  
/*  */
  String thumb = null;
  
/*  */
  String small = null;
  
  CryptoCurrencyV2Image();

  @override
  String toString() {
    return 'CryptoCurrencyV2Image[large=$large, thumb=$thumb, small=$small, ]';
  }

  CryptoCurrencyV2Image.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    large =
        json['large']
    ;
    thumb =
        json['thumb']
    ;
    small =
        json['small']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'large': large,
      'thumb': thumb,
      'small': small
     };
  }

  static List<CryptoCurrencyV2Image> listFromJson(List<dynamic> json) {
    return json == null ? new List<CryptoCurrencyV2Image>() : json.map((value) => new CryptoCurrencyV2Image.fromJson(value)).toList();
  }

  static Map<String, CryptoCurrencyV2Image> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CryptoCurrencyV2Image>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CryptoCurrencyV2Image.fromJson(value));
    }
    return map;
  }
}

