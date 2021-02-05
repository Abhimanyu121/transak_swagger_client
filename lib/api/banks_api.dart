part of swagger.api;

class BanksApi {
  final TransakClient apiClient;

  BanksApi([TransakClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// 2. Add bank details
  ///
  /// Add bank details
  Future<InlineResponse2004> banksAddBankDetails(
      String reservationId, String detailsType, String accessToken,
      {String accountNumber,
      String sortCode,
      String swiftbic,
      String iban,
      String ifscCode,
      String upiId,
      String address}) async {
    Object postBody = null;

    // verify required params are set
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }
    if (detailsType == null) {
      throw new ApiException(400, "Missing required param: detailsType");
    }
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/banks".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "access_token", accessToken));

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

      if (reservationId != null) {
        hasFields = true;
        mp.fields['reservationId'] = parameterToString(reservationId);
      }

      if (detailsType != null) {
        hasFields = true;
        mp.fields['detailsType'] = parameterToString(detailsType);
      }

      if (accountNumber != null) {
        hasFields = true;
        mp.fields['accountNumber'] = parameterToString(accountNumber);
      }

      if (sortCode != null) {
        hasFields = true;
        mp.fields['sortCode'] = parameterToString(sortCode);
      }

      if (swiftbic != null) {
        hasFields = true;
        mp.fields['swiftbic'] = parameterToString(swiftbic);
      }

      if (iban != null) {
        hasFields = true;
        mp.fields['iban'] = parameterToString(iban);
      }

      if (ifscCode != null) {
        hasFields = true;
        mp.fields['ifscCode'] = parameterToString(ifscCode);
      }

      if (upiId != null) {
        hasFields = true;
        mp.fields['upiId'] = parameterToString(upiId);
      }

      if (address != null) {
        hasFields = true;
        mp.fields['address'] = parameterToString(address);
      }

      if (hasFields) postBody = mp;
    } else {
      if (reservationId != null)
        formParams['reservationId'] = parameterToString(reservationId);
      if (detailsType != null)
        formParams['detailsType'] = parameterToString(detailsType);
      if (accountNumber != null)
        formParams['accountNumber'] = parameterToString(accountNumber);
      if (sortCode != null)
        formParams['sortCode'] = parameterToString(sortCode);
      if (swiftbic != null)
        formParams['swiftbic'] = parameterToString(swiftbic);
      if (iban != null) formParams['iban'] = parameterToString(iban);
      if (ifscCode != null)
        formParams['ifscCode'] = parameterToString(ifscCode);
      if (upiId != null) formParams['upiId'] = parameterToString(upiId);
      if (address != null) formParams['address'] = parameterToString(address);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2004')
          as InlineResponse2004;
    } else {
      return null;
    }
  }

  /// 3. Delete bank details
  ///
  /// Delete bank details
  Future<InlineResponse2005> banksDeleteOne(
      String id, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/banks".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "access_token", accessToken));

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

      if (id != null) {
        hasFields = true;
        mp.fields['id'] = parameterToString(id);
      }

      if (hasFields) postBody = mp;
    } else {
      if (id != null) formParams['id'] = parameterToString(id);
    }

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2005')
          as InlineResponse2005;
    } else {
      return null;
    }
  }

  /// 1. Get user banks
  ///
  /// Get one or all banks for a user  &gt; you can get one bank by sending its id in the query parameters
  Future<InlineResponse2004> banksFindOneOrMany(String accessToken,
      {String id}) async {
    Object postBody = null;

    // verify required params are set
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/banks".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "id", id));
    }
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "access_token", accessToken));

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
      return apiClient.deserialize(response.body, 'InlineResponse2004')
          as InlineResponse2004;
    } else {
      return null;
    }
  }
}
