part of swagger.api;

class CryptoCurrencyV2 {
  String id = null;

  String coinId = null;

/*  */
  String createdAt = null;

/*  */
  int decimals = null;

  CryptoCurrencyV2Image image = null;

/*  */
  bool isAllowed = null;

/*  */
  bool isPopular = null;

/*  */
  bool isStable = null;

/*  */
  int marketCapRank = null;

/*  */
  String name = null;

/*  */
  List<Object> networks = [];

/*  */
  num priceUSD = null;

/*  */
  int roundOff = null;

/*  */
  List<Object> sourceAssets = [];

/*  */
  String symbol = null;

/*  */
  int volumeUSD = null;

/*  */
  String updatedAt = null;

/*  */
  String network = null;

/*  */
  String uniqueId = null;

  CryptoCurrencyV2();

  @override
  String toString() {
    return 'CryptoCurrencyV2[id=$id, coinId=$coinId, createdAt=$createdAt, decimals=$decimals, image=$image, isAllowed=$isAllowed, isPopular=$isPopular, isStable=$isStable, marketCapRank=$marketCapRank, name=$name, networks=$networks, priceUSD=$priceUSD, roundOff=$roundOff, sourceAssets=$sourceAssets, symbol=$symbol, volumeUSD=$volumeUSD, updatedAt=$updatedAt, network=$network, uniqueId=$uniqueId, ]';
  }

  CryptoCurrencyV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    coinId = json['coinId'];
    createdAt = json['createdAt'];
    decimals = json['decimals'];
    image = new CryptoCurrencyV2Image.fromJson(json['image']);
    isAllowed = json['isAllowed'];
    isPopular = json['isPopular'];
    isStable = json['isStable'];
    marketCapRank = json['market_cap_rank'];
    name = json['name'];
    networks = listFromJson(json['networks']);
    priceUSD = json['priceUSD'];
    roundOff = json['roundOff'];
    sourceAssets = listFromJson(json['sourceAssets']);
    symbol = json['symbol'];
    volumeUSD = json['volumeUSD'];
    updatedAt = json['updatedAt'];
    network = json['network'];
    uniqueId = json['uniqueId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'coinId': coinId,
      'createdAt': createdAt,
      'decimals': decimals,
      'image': image,
      'isAllowed': isAllowed,
      'isPopular': isPopular,
      'isStable': isStable,
      'market_cap_rank': marketCapRank,
      'name': name,
      'networks': networks,
      'priceUSD': priceUSD,
      'roundOff': roundOff,
      'sourceAssets': sourceAssets,
      'symbol': symbol,
      'volumeUSD': volumeUSD,
      'updatedAt': updatedAt,
      'network': network,
      'uniqueId': uniqueId
    };
  }

  static List<CryptoCurrencyV2> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CryptoCurrencyV2>()
        : json.map((value) => new CryptoCurrencyV2.fromJson(value)).toList();
  }

  static Map<String, CryptoCurrencyV2> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CryptoCurrencyV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CryptoCurrencyV2.fromJson(value));
    }
    return map;
  }
}
