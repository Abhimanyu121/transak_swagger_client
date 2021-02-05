part of swagger.api;

class OrderV2 {
  String id = null;

/* Your wallet address */
  String walletAddress = null;

/* Order creation date */
  String createdAt = null;

/* Order status */
  String status = null;

/* Fiat currency which the users wants to buy/sell */
  String fiatCurrency = null;

/* Crypto currency which the users wants to sell/buy */
  String cryptoCurrency = null;

/* Is BUY or SELL */
  String isBuyOrSell = null;

/* Fiat amount that is required to buy/sell */
  int fiatAmount = null;

  bool walletLink = null;

/* Payment method id, like gbp_bank_transfer */
  String paymentOptionId = null;

  String reservationId = null;

/* address additional data like memo id */
  String addressAdditionalData = null;

/* Crypto network id. Example BEP2, ERC-20 */
  bool network = null;

  int amountPaid = null;

/* Payment reference code */
  int referenceCode = null;

/* Conversion price */
  num conversionPrice = null;

/* Crypto amount that is required to sell/buy */
  num cryptoAmount = null;

/* Total fee in fiat */
  int totalFeeInFiat = null;

  List<Object> paymentOptions = [];

/* Order expiry date */
  String autoExpiresAt = null;

  bool fromWalletAddress = null;

  OrderV2();

  @override
  String toString() {
    return 'OrderV2[id=$id, walletAddress=$walletAddress, createdAt=$createdAt, status=$status, fiatCurrency=$fiatCurrency, cryptoCurrency=$cryptoCurrency, isBuyOrSell=$isBuyOrSell, fiatAmount=$fiatAmount, walletLink=$walletLink, paymentOptionId=$paymentOptionId, reservationId=$reservationId, addressAdditionalData=$addressAdditionalData, network=$network, amountPaid=$amountPaid, referenceCode=$referenceCode, conversionPrice=$conversionPrice, cryptoAmount=$cryptoAmount, totalFeeInFiat=$totalFeeInFiat, paymentOptions=$paymentOptions, autoExpiresAt=$autoExpiresAt, fromWalletAddress=$fromWalletAddress, ]';
  }

  OrderV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    walletAddress = json['walletAddress'];
    createdAt = json['createdAt'];
    status = json['status'];
    fiatCurrency = json['fiatCurrency'];
    cryptoCurrency = json['cryptoCurrency'];
    isBuyOrSell = json['isBuyOrSell'];
    fiatAmount = json['fiatAmount'];
    walletLink = json['walletLink'];
    paymentOptionId = json['paymentOptionId'];
    reservationId = json['reservationId'];
    addressAdditionalData = json['addressAdditionalData'];
    network = json['network'];
    amountPaid = json['amountPaid'];
    referenceCode = json['referenceCode'];
    conversionPrice = json['conversionPrice'];
    cryptoAmount = json['cryptoAmount'];
    totalFeeInFiat = json['totalFeeInFiat'];
    paymentOptions = OrderV2.listFromJson(json['paymentOptions']);
    autoExpiresAt = json['autoExpiresAt'];
    fromWalletAddress = json['fromWalletAddress'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'walletAddress': walletAddress,
      'createdAt': createdAt,
      'status': status,
      'fiatCurrency': fiatCurrency,
      'cryptoCurrency': cryptoCurrency,
      'isBuyOrSell': isBuyOrSell,
      'fiatAmount': fiatAmount,
      'walletLink': walletLink,
      'paymentOptionId': paymentOptionId,
      'reservationId': reservationId,
      'addressAdditionalData': addressAdditionalData,
      'network': network,
      'amountPaid': amountPaid,
      'referenceCode': referenceCode,
      'conversionPrice': conversionPrice,
      'cryptoAmount': cryptoAmount,
      'totalFeeInFiat': totalFeeInFiat,
      'paymentOptions': paymentOptions,
      'autoExpiresAt': autoExpiresAt,
      'fromWalletAddress': fromWalletAddress
    };
  }

  static List<OrderV2> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<OrderV2>()
        : json.map((value) => new OrderV2.fromJson(value)).toList();
  }

  static Map<String, OrderV2> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new OrderV2.fromJson(value));
    }
    return map;
  }
}
