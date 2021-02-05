part of swagger.api;

class CurrenciesApi {
  final TransakClient apiClient;

  CurrenciesApi([TransakClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// 1. Get crypto currencies
  ///
  /// Get the supporting crypto currencies list
  Future<InlineResponse2007> currenciesCurrencyList() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path =
        "/currencies/crypto-currencies".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      "application/json",
      "application/x-www-form-urlencoded",
      "application/xml",
      "text/xml"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2007')
          as InlineResponse2007;
    } else {
      return null;
    }
  }

  /// 3. Get a currency price
  ///
  /// Get the price as per the payment method, fiat currency, amount  &gt; Although fiatAmount and cryptoAmount is not both required, you need to pass one of them.
  Future<InlineResponse2006> currenciesGetPrice(
      String fiatCurrency, String cryptoCurrency, String isBuyOrSell,
      {String paymentMethodId,
      double fiatAmount,
      double cryptoAmount,
      String partnerApiKey}) async {
    Object postBody = null;

    // verify required params are set
    if (fiatCurrency == null) {
      throw new ApiException(400, "Missing required param: fiatCurrency");
    }
    if (cryptoCurrency == null) {
      throw new ApiException(400, "Missing required param: cryptoCurrency");
    }
    if (isBuyOrSell == null) {
      throw new ApiException(400, "Missing required param: isBuyOrSell");
    }

    // create path and map variables
    String path = "/currencies/price".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "fiatCurrency", fiatCurrency));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "cryptoCurrency", cryptoCurrency));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "isBuyOrSell", isBuyOrSell));
    if (paymentMethodId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "paymentMethodId", paymentMethodId));
    }
    if (fiatAmount != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "fiatAmount", fiatAmount));
    }
    if (cryptoAmount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "cryptoAmount", cryptoAmount));
    }
    if (partnerApiKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "partnerApiKey", partnerApiKey));
    }

    List<String> contentTypes = [
      "application/json",
      "application/x-www-form-urlencoded",
      "application/xml",
      "text/xml"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006')
          as InlineResponse2006;
    } else {
      return null;
    }
  }

  /// 4. Verify wallet address
  ///
  /// Verify a crypto wallet address
  Future<InlineResponse2008> currenciesVerifyWalletAddress(
      String walletAddress, String cryptoCurrency) async {
    Object postBody = null;

    // verify required params are set
    if (walletAddress == null) {
      throw new ApiException(400, "Missing required param: walletAddress");
    }
    if (cryptoCurrency == null) {
      throw new ApiException(400, "Missing required param: cryptoCurrency");
    }

    // create path and map variables
    String path =
        "/currencies/verify-wallet-address".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "walletAddress", walletAddress));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "cryptoCurrency", cryptoCurrency));

    List<String> contentTypes = [
      "application/json",
      "application/x-www-form-urlencoded",
      "application/xml",
      "text/xml"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2008')
          as InlineResponse2008;
    } else {
      return null;
    }
  }

  /// 2. Get fiat currencies
  ///
  /// Get the supporting fiat currencies list
  Future<InlineResponse2009> fiatCurrenciesList() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/currencies/fiat-currencies".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      "application/json",
      "application/x-www-form-urlencoded",
      "application/xml",
      "text/xml"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2009')
          as InlineResponse2009;
    } else {
      return null;
    }
  }
}
