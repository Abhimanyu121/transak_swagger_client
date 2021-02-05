part of swagger.api;

class KycFormsV2CurrentLevelLimits {
  /* daily limit value */
  num daily = null;
  
/* limit per transaction */
  num perTransaction = null;
  
/* forms required for this level */
  List<KycFormsV2CurrentLevelLimitsRequirements> requirements = [];
  
  KycFormsV2CurrentLevelLimits();

  @override
  String toString() {
    return 'KycFormsV2CurrentLevelLimits[daily=$daily, perTransaction=$perTransaction, requirements=$requirements, ]';
  }

  KycFormsV2CurrentLevelLimits.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    daily =
        json['daily']
    ;
    perTransaction =
        json['perTransaction']
    ;
    requirements =
      KycFormsV2CurrentLevelLimitsRequirements.listFromJson(json['requirements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'daily': daily,
      'perTransaction': perTransaction,
      'requirements': requirements
     };
  }

  static List<KycFormsV2CurrentLevelLimits> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycFormsV2CurrentLevelLimits>() : json.map((value) => new KycFormsV2CurrentLevelLimits.fromJson(value)).toList();
  }

  static Map<String, KycFormsV2CurrentLevelLimits> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycFormsV2CurrentLevelLimits>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycFormsV2CurrentLevelLimits.fromJson(value));
    }
    return map;
  }
}

