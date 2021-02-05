part of swagger.api;

class UserApi {
  final ApiClient apiClient;

  UserApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 1. Login or Signup
  ///
  /// Send one time verification code to user email address  &gt; if no user associated with the provided email, a new user will be created, and a verification code will be sent to the email
  Future<InlineResponse200> userAuthEmailLogin(
      String contentType, String reservationId, String email) async {
    Object postBody = null;
    List<String> contentTypes = [
      "application/json",
      "application/x-www-form-urlencoded",
      "application/xml",
      "text/xml"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    // verify required params are set
    if (contentType == null) {
      throw new ApiException(400, "Missing required param: contentType");
    }
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }
    if (email == null) {
      throw new ApiException(400, "Missing required param: email");
    }

    // create path and map variables
    String path = "/user/email/send".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["content-type"] = contentType;

    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (reservationId != null) {
        hasFields = true;
        mp.fields['reservationId'] = parameterToString(reservationId);
      }

      if (email != null) {
        hasFields = true;
        mp.fields['email'] = parameterToString(email);
      }

      if (hasFields) postBody = mp;
    } else {
      if (reservationId != null)
        formParams['reservationId'] = parameterToString(reservationId);
      if (email != null) formParams['email'] = parameterToString(email);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse200')
          as InlineResponse200;
    } else {
      return null;
    }
  }

  /// 2. Verify email
  ///
  /// Verify user&#39;s email address  Users need to pass the verification code that is sent to their email, on success, they&#39;ll get an accessToken that can be used with the next requests.
  Future<InlineResponse2001> userAuthEmailVerify(
      String email, String emailVerificationCode, String reservationId) async {
    Object postBody = null;

    // verify required params are set
    if (email == null) {
      throw new ApiException(400, "Missing required param: email");
    }
    if (emailVerificationCode == null) {
      throw new ApiException(
          400, "Missing required param: emailVerificationCode");
    }
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }

    // create path and map variables
    String path = "/user/email/verify".replaceAll("{format}", "json");

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

      if (email != null) {
        hasFields = true;
        mp.fields['email'] = parameterToString(email);
      }

      if (emailVerificationCode != null) {
        hasFields = true;
        mp.fields['emailVerificationCode'] =
            parameterToString(emailVerificationCode);
      }

      if (reservationId != null) {
        hasFields = true;
        mp.fields['reservationId'] = parameterToString(reservationId);
      }

      if (hasFields) postBody = mp;
    } else {
      if (email != null) formParams['email'] = parameterToString(email);
      if (emailVerificationCode != null)
        formParams['emailVerificationCode'] =
            parameterToString(emailVerificationCode);
      if (reservationId != null)
        formParams['reservationId'] = parameterToString(reservationId);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2001')
          as InlineResponse2001;
    } else {
      return null;
    }
  }

  /// 7. Add kyc document
  ///
  /// Use this endpoint to update user with an uploaded file  Please read [File Upload](docs/user/3.file-upload.md) to know more about uploading process.
  Future<InlineResponse2003> userDoc(
      String key, String documentId, String type, String accessToken,
      {String side, String countryCode}) async {
    Object postBody = null;

    // verify required params are set
    if (key == null) {
      throw new ApiException(400, "Missing required param: key");
    }
    if (documentId == null) {
      throw new ApiException(400, "Missing required param: documentId");
    }
    if (type == null) {
      throw new ApiException(400, "Missing required param: type");
    }
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/user/files".replaceAll("{format}", "json");

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

      if (key != null) {
        hasFields = true;
        mp.fields['key'] = parameterToString(key);
      }

      if (documentId != null) {
        hasFields = true;
        mp.fields['documentId'] = parameterToString(documentId);
      }

      if (type != null) {
        hasFields = true;
        mp.fields['type'] = parameterToString(type);
      }

      if (side != null) {
        hasFields = true;
        mp.fields['side'] = parameterToString(side);
      }

      if (countryCode != null) {
        hasFields = true;
        mp.fields['countryCode'] = parameterToString(countryCode);
      }

      if (hasFields) postBody = mp;
    } else {
      if (key != null) formParams['key'] = parameterToString(key);
      if (documentId != null)
        formParams['documentId'] = parameterToString(documentId);
      if (type != null) formParams['type'] = parameterToString(type);
      if (side != null) formParams['side'] = parameterToString(side);
      if (countryCode != null)
        formParams['countryCode'] = parameterToString(countryCode);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2003')
          as InlineResponse2003;
    } else {
      return null;
    }
  }

  /// 5. Get KYC forms
  ///
  /// Get all required forms for a user to complete their KYC
  Future<KycFormsV2> userGetForms(String reservationId) async {
    Object postBody = null;

    // verify required params are set
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }

    // create path and map variables
    String path = "/user/kyc/forms".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "reservationId", reservationId));

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
      return apiClient.deserialize(response.body, 'KycFormsV2') as KycFormsV2;
    } else {
      return null;
    }
  }

  /// 9. Logout
  ///
  /// Logout a user with access token.
  Future userLogout(String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/user/logout".replaceAll("{format}", "json");

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

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// 4. Update user
  ///
  /// Update user   &gt; Only users with NOT_SUBMITTED or REJECTED kyc could be updated, the only exeption is user Billing address, it can be updated regardless the kyc status.
  Future<UserV2> userPatchUser(String reservationId, String accessToken,
      {String firstName,
      String lastName,
      String dob,
      String mobileNumber,
      String addressLine1,
      String addressLine2,
      String state,
      String city,
      String postCode,
      String country,
      bool isBillingAddress}) async {
    Object postBody = null;

    // verify required params are set
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/user".replaceAll("{format}", "json");

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

      if (firstName != null) {
        hasFields = true;
        mp.fields['firstName'] = parameterToString(firstName);
      }

      if (lastName != null) {
        hasFields = true;
        mp.fields['lastName'] = parameterToString(lastName);
      }

      if (dob != null) {
        hasFields = true;
        mp.fields['dob'] = parameterToString(dob);
      }

      if (mobileNumber != null) {
        hasFields = true;
        mp.fields['mobileNumber'] = parameterToString(mobileNumber);
      }

      if (addressLine1 != null) {
        hasFields = true;
        mp.fields['addressLine1'] = parameterToString(addressLine1);
      }

      if (addressLine2 != null) {
        hasFields = true;
        mp.fields['addressLine2'] = parameterToString(addressLine2);
      }

      if (state != null) {
        hasFields = true;
        mp.fields['state'] = parameterToString(state);
      }

      if (city != null) {
        hasFields = true;
        mp.fields['city'] = parameterToString(city);
      }

      if (postCode != null) {
        hasFields = true;
        mp.fields['postCode'] = parameterToString(postCode);
      }

      if (country != null) {
        hasFields = true;
        mp.fields['country'] = parameterToString(country);
      }

      if (isBillingAddress != null) {
        hasFields = true;
        mp.fields['isBillingAddress'] = parameterToString(isBillingAddress);
      }

      if (hasFields) postBody = mp;
    } else {
      if (reservationId != null)
        formParams['reservationId'] = parameterToString(reservationId);
      if (firstName != null)
        formParams['firstName'] = parameterToString(firstName);
      if (lastName != null)
        formParams['lastName'] = parameterToString(lastName);
      if (dob != null) formParams['dob'] = parameterToString(dob);
      if (mobileNumber != null)
        formParams['mobileNumber'] = parameterToString(mobileNumber);
      if (addressLine1 != null)
        formParams['addressLine1'] = parameterToString(addressLine1);
      if (addressLine2 != null)
        formParams['addressLine2'] = parameterToString(addressLine2);
      if (state != null) formParams['state'] = parameterToString(state);
      if (city != null) formParams['city'] = parameterToString(city);
      if (postCode != null)
        formParams['postCode'] = parameterToString(postCode);
      if (country != null) formParams['country'] = parameterToString(country);
      if (isBillingAddress != null)
        formParams['isBillingAddress'] = parameterToString(isBillingAddress);
    }

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'UserV2') as UserV2;
    } else {
      return null;
    }
  }

  /// 3. Get user
  ///
  /// Fetch user data
  Future<UserV2> userProfileDataGetUser(String authorization) async {
    Object postBody = null;

    // verify required params are set
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/user".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;

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
      return apiClient.deserialize(response.body, 'UserV2') as UserV2;
    } else {
      return null;
    }
  }

  /// 6. Upload kyc document
  ///
  /// Get a presigned url to upload a file  Please read [File Upload](docs/Tutorials/3.file-upload.md) to know more about uploading process.
  Future<InlineResponse2002> userSignedRequest(
      String mimeType, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if (mimeType == null) {
      throw new ApiException(400, "Missing required param: mimeType");
    }
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/user/files/url".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "mimeType", mimeType));
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
      return apiClient.deserialize(response.body, 'InlineResponse2002')
          as InlineResponse2002;
    } else {
      return null;
    }
  }

  /// 8. Submit user&#39;s KYC
  ///
  /// Call this endpoint to start validating a user KYC after submitting all the required forms.
  Future<KycStatusV2> userSubmitKyc(String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/user/kyc/submit".replaceAll("{format}", "json");

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

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'KycStatusV2') as KycStatusV2;
    } else {
      return null;
    }
  }
}
