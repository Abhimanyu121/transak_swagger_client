part of swagger.api;

class FiatCurrencyV2 {
  String symbol = null;

  List<Object> supportingCountries = [];

  String logoSymbol = null;

  String name = null;

  List<Object> paymentOptions = [];

  bool isPopular = null;

  bool isAllowed = null;

  int roundOff = null;

  int defaultAmount = null;

  String icon = null;

  FiatCurrencyV2();

  @override
  String toString() {
    return 'FiatCurrencyV2[symbol=$symbol, supportingCountries=$supportingCountries, logoSymbol=$logoSymbol, name=$name, paymentOptions=$paymentOptions, isPopular=$isPopular, isAllowed=$isAllowed, roundOff=$roundOff, defaultAmount=$defaultAmount, icon=$icon, ]';
  }

  FiatCurrencyV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    symbol = json['symbol'];
    supportingCountries = listFromJson(json['supportingCountries']);
    logoSymbol = json['logoSymbol'];
    name = json['name'];
    paymentOptions = listFromJson(json['paymentOptions']);
    isPopular = json['isPopular'];
    isAllowed = json['isAllowed'];
    roundOff = json['roundOff'];
    defaultAmount = json['defaultAmount'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'supportingCountries': supportingCountries,
      'logoSymbol': logoSymbol,
      'name': name,
      'paymentOptions': paymentOptions,
      'isPopular': isPopular,
      'isAllowed': isAllowed,
      'roundOff': roundOff,
      'defaultAmount': defaultAmount,
      'icon': icon
    };
  }

  static List<FiatCurrencyV2> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<FiatCurrencyV2>()
        : json.map((value) => new FiatCurrencyV2.fromJson(value)).toList();
  }

  static Map<String, FiatCurrencyV2> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FiatCurrencyV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FiatCurrencyV2.fromJson(value));
    }
    return map;
  }
}
