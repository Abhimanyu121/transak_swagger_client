part of swagger.api;

class InlineResponse200Response {
  /* true for existing users, false for new users */
  bool isLogin = null;
  
/* user's email address */
  String email = null;
  
/* Liquidity provider */
  String liquidityProvider = null;
  
  InlineResponse200Response();

  @override
  String toString() {
    return 'InlineResponse200Response[isLogin=$isLogin, email=$email, liquidityProvider=$liquidityProvider, ]';
  }

  InlineResponse200Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isLogin =
        json['isLogin']
    ;
    email =
        json['email']
    ;
    liquidityProvider =
        json['liquidityProvider']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isLogin': isLogin,
      'email': email,
      'liquidityProvider': liquidityProvider
     };
  }

  static List<InlineResponse200Response> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200Response>() : json.map((value) => new InlineResponse200Response.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200Response> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200Response.fromJson(value));
    }
    return map;
  }
}

