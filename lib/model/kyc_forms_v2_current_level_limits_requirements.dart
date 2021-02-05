part of swagger.api;

class KycFormsV2CurrentLevelLimitsRequirements {
  /* is form submitted */
  bool isSubmitted = null;
  
  KycFormsV2CurrentLevelLimitsRequirements();

  @override
  String toString() {
    return 'KycFormsV2CurrentLevelLimitsRequirements[isSubmitted=$isSubmitted, ]';
  }

  KycFormsV2CurrentLevelLimitsRequirements.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isSubmitted =
        json['isSubmitted']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isSubmitted': isSubmitted
     };
  }

  static List<KycFormsV2CurrentLevelLimitsRequirements> listFromJson(List<dynamic> json) {
    return json == null ? new List<KycFormsV2CurrentLevelLimitsRequirements>() : json.map((value) => new KycFormsV2CurrentLevelLimitsRequirements.fromJson(value)).toList();
  }

  static Map<String, KycFormsV2CurrentLevelLimitsRequirements> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KycFormsV2CurrentLevelLimitsRequirements>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KycFormsV2CurrentLevelLimitsRequirements.fromJson(value));
    }
    return map;
  }
}

