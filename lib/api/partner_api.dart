part of swagger.api;



class PartnerApi {
  final ApiClient apiClient;

  PartnerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get the order details using the partner API secret
  ///
  /// 
  Future<InlineResponse2006> partnerGetOrder(String partnerAPISecret, String orderId) async {
    Object postBody = null;

    // verify required params are set
    if(partnerAPISecret == null) {
     throw new ApiException(400, "Missing required param: partnerAPISecret");
    }
    if(orderId == null) {
     throw new ApiException(400, "Missing required param: orderId");
    }

    // create path and map variables
    String path = "/partners/order/{orderId}".replaceAll("{format}","json").replaceAll("{" + "orderId" + "}", orderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "partnerAPISecret", partnerAPISecret));
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Get all the orders for the partner
  ///
  /// 
  Future<InlineResponse2006> partnerGetOrders(String partnerAPISecret, { double limit, double skip }) async {
    Object postBody = null;

    // verify required params are set
    if(partnerAPISecret == null) {
     throw new ApiException(400, "Missing required param: partnerAPISecret");
    }

    // create path and map variables
    String path = "/partners/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "partnerAPISecret", partnerAPISecret));
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skip", skip));
    }
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Get Partner Info
  ///
  /// 
  Future<InlineResponse2006> partnerGetPartnerInfo(String partnerApiKey) async {
    Object postBody = null;

    // verify required params are set
    if(partnerApiKey == null) {
     throw new ApiException(400, "Missing required param: partnerApiKey");
    }

    // create path and map variables
    String path = "/partners/{partnerApiKey}".replaceAll("{format}","json").replaceAll("{" + "partnerApiKey" + "}", partnerApiKey.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Get the past webhook trigger responses
  ///
  /// 
  Future<InlineResponse2006> partnerGetPastWebhooks(String partnerAPISecret, { String orderID, String eventID }) async {
    Object postBody = null;

    // verify required params are set
    if(partnerAPISecret == null) {
     throw new ApiException(400, "Missing required param: partnerAPISecret");
    }

    // create path and map variables
    String path = "/partners/webhooks".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "partnerAPISecret", partnerAPISecret));
    if(orderID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "orderID", orderID));
    }
    if(eventID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "eventID", eventID));
    }
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Get partner data
  ///
  /// 
  Future<InlineResponse2006> partnerProfileData() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/partners".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Test your webhook integration
  ///
  /// 
  Future<InlineResponse2006> partnerTestWebhook(String partnerAPISecret) async {
    Object postBody = null;

    // verify required params are set
    if(partnerAPISecret == null) {
     throw new ApiException(400, "Missing required param: partnerAPISecret");
    }

    // create path and map variables
    String path = "/partners/test-webhook".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (partnerAPISecret != null) {
        hasFields = true;
        mp.fields['partnerAPISecret'] = parameterToString(partnerAPISecret);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (partnerAPISecret != null)
        formParams['partnerAPISecret'] = parameterToString(partnerAPISecret);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Update your webhook URL
  ///
  /// 
  Future<InlineResponse2006> partnerUpdateWebhookURL(String partnerAPISecret, String webhookURL) async {
    Object postBody = null;

    // verify required params are set
    if(partnerAPISecret == null) {
     throw new ApiException(400, "Missing required param: partnerAPISecret");
    }
    if(webhookURL == null) {
     throw new ApiException(400, "Missing required param: webhookURL");
    }

    // create path and map variables
    String path = "/partners/update-webhook-url".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","application/xml","text/xml"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (partnerAPISecret != null) {
        hasFields = true;
        mp.fields['partnerAPISecret'] = parameterToString(partnerAPISecret);
      }
      
      if (webhookURL != null) {
        hasFields = true;
        mp.fields['webhookURL'] = parameterToString(webhookURL);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (partnerAPISecret != null)
        formParams['partnerAPISecret'] = parameterToString(partnerAPISecret);
if (webhookURL != null)
        formParams['webhookURL'] = parameterToString(webhookURL);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
}
