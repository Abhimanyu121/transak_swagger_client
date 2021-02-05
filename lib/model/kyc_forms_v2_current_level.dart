part of swagger.api;

class KycFormsV2CurrentLevel {
  /* level id */
  String levelId = null;
  
/* level status, one of \"NOT_SUBMITTED, SUBMITTED, APPROVED, REJECTED\" */
  String status = null;
  
/* payment method, the value is determined from GET /currencies/price endpoint, methods are \"sepa_bank_transfer, credit_debit_card, neft_bank_transfer, upi\" */
  String paymentMethod = null;
  
/* fiat currency */
  String fiatCurrency = null;
  

  KycFormsV2CurrentLevelLimits limits = null;
  
  KycFormsV2CurrentLevel();

  @override
  String toString() {
    return 'KycFormsV2CurrentLevel[levelId=$levelId, status=$status, paymentMethod=$paymentMethod, fiatCurrency=$fiatCurrency, limits=$limits, ]';
  }

  KycFormsV2CurrentLevel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    levelId =
        json['levelId']
    ;
    status =
        json['status']
    ;
    paymentMethod =
        json['paymentMethod']
    ;
    fiatCurrency =
        json['fiatCurrency']
    ;
    limits =
      
      
      new KycFormsV2CurrentLevelLimits.fromJson(json['limits'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'levelId': levelId,
      'status': status,
      'paymentMethod': paymentMethod,
      'fiatCurrency': fiatCurrency,
      'limits': limits
     };
  }

  static List<KycFormsV2CurrentLevel> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycFormsV2CurrentLevel>() : json.map((value) => new KycFormsV2CurrentLevel.fromJson(value)).toList();
  }

  static Map<String, KycFormsV2CurrentLevel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycFormsV2CurrentLevel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycFormsV2CurrentLevel.fromJson(value));
    }
    return map;
  }
}

