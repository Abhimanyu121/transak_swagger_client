part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class TransakClient {
  String basePath;
  var client = new http.Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  TransakClient({this.basePath: "https://staging-api.transak.com/api/v2"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['accessToken'] = new OAuth();
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'BankV2':
          return new BankV2.fromJson(value);
        case 'BanksV2':
          return new BanksV2.fromJson(value);
        case 'CountryV2':
          return new CountryV2.fromJson(value);
        case 'CryptoCurrencyV2':
          return new CryptoCurrencyV2.fromJson(value);
        case 'CryptoCurrencyV2Image':
          return new CryptoCurrencyV2Image.fromJson(value);
        case 'ErrorV2':
          return new ErrorV2.fromJson(value);
        case 'ErrorV2Error':
          return new ErrorV2Error.fromJson(value);
        case 'FiatCurrencyV2':
          return new FiatCurrencyV2.fromJson(value);
        case 'FileV2':
          return new FileV2.fromJson(value);
        case 'FormV2':
          return new FormV2.fromJson(value);
        case 'FormV2AcceptableFormats':
          return new FormV2AcceptableFormats.fromJson(value);
        case 'FormV2Endpoint':
          return new FormV2Endpoint.fromJson(value);
        case 'FormV2Fields':
          return new FormV2Fields.fromJson(value);
        case 'FormV2Options':
          return new FormV2Options.fromJson(value);
        case 'FormV2Tabs':
          return new FormV2Tabs.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return new InlineResponse2001.fromJson(value);
        case 'InlineResponse20010':
          return new InlineResponse20010.fromJson(value);
        case 'InlineResponse20011':
          return new InlineResponse20011.fromJson(value);
        case 'InlineResponse20012':
          return new InlineResponse20012.fromJson(value);
        case 'InlineResponse20013':
          return new InlineResponse20013.fromJson(value);
        case 'InlineResponse20013Response':
          return new InlineResponse20013Response.fromJson(value);
        case 'InlineResponse2001Response':
          return new InlineResponse2001Response.fromJson(value);
        case 'InlineResponse2002':
          return new InlineResponse2002.fromJson(value);
        case 'InlineResponse2003':
          return new InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return new InlineResponse2004.fromJson(value);
        case 'InlineResponse2005':
          return new InlineResponse2005.fromJson(value);
        case 'InlineResponse2005Response':
          return new InlineResponse2005Response.fromJson(value);
        case 'InlineResponse2006':
          return new InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return new InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return new InlineResponse2008.fromJson(value);
        case 'InlineResponse2009':
          return new InlineResponse2009.fromJson(value);
        case 'InlineResponse200Response':
          return new InlineResponse200Response.fromJson(value);
        case 'KycFormsV2':
          return new KycFormsV2.fromJson(value);
        case 'KycFormsV2CurrentLevel':
          return new KycFormsV2CurrentLevel.fromJson(value);
        case 'KycFormsV2CurrentLevelLimits':
          return new KycFormsV2CurrentLevelLimits.fromJson(value);
        case 'KycFormsV2CurrentLevelLimitsRequirements':
          return new KycFormsV2CurrentLevelLimitsRequirements.fromJson(value);
        case 'KycStatusV2':
          return new KycStatusV2.fromJson(value);
        case 'KycStatusV2Response':
          return new KycStatusV2Response.fromJson(value);
        case 'KycStatusV2ResponseKyc':
          return new KycStatusV2ResponseKyc.fromJson(value);
        case 'KycStatusV2ResponseKycL1':
          return new KycStatusV2ResponseKycL1.fromJson(value);
        case 'KycStatusV2ResponseKycL2':
          return new KycStatusV2ResponseKycL2.fromJson(value);
        case 'OrderFormsV2':
          return new OrderFormsV2.fromJson(value);
        case 'OrderV2':
          return new OrderV2.fromJson(value);
        case 'OrdersV2':
          return new OrdersV2.fromJson(value);
        case 'PresignedUrlV2':
          return new PresignedUrlV2.fromJson(value);
        case 'UserV2':
          return new UserV2.fromJson(value);
        case 'UserV2Response':
          return new UserV2Response.fromJson(value);
        case 'UserV2ResponseAddress':
          return new UserV2ResponseAddress.fromJson(value);
        case 'UserV2ResponseBillingAddress':
          return new UserV2ResponseBillingAddress.fromJson(value);
        case 'UserV2ResponseKyc':
          return new UserV2ResponseKyc.fromJson(value);
        case 'UserV2ResponseKycL1':
          return new UserV2ResponseKycL1.fromJson(value);
        case 'UserV2ResponseKycL2':
          return new UserV2ResponseKycL2.fromJson(value);
        case 'UserV2ResponseLastLogin':
          return new UserV2ResponseLastLogin.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
        .where((p) => p.value != null)
        .map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null)
        throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
