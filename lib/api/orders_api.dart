part of swagger.api;

class OrdersApi {
  final ApiClient apiClient;

  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 5. Cancel existing order
  ///
  /// Use this endpoint to cancel an order
  Future<InlineResponse20011> ordersCancelOrder(
      String orderId, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/orders/{orderId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "orderId" + "}", orderId.toString());

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20011')
          as InlineResponse20011;
    } else {
      return null;
    }
  }

  /// 3. Create new order
  ///
  /// Use this resource to create new order from a wallet reservation
  Future<InlineResponse20011> ordersCreateOrder(
      String reservationId, String paymentMethod,
      {String bankId}) async {
    Object postBody = null;

    // verify required params are set
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }
    if (paymentMethod == null) {
      throw new ApiException(400, "Missing required param: paymentMethod");
    }

    // create path and map variables
    String path = "/orders".replaceAll("{format}", "json");

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

      if (reservationId != null) {
        hasFields = true;
        mp.fields['reservationId'] = parameterToString(reservationId);
      }

      if (paymentMethod != null) {
        hasFields = true;
        mp.fields['paymentMethod'] = parameterToString(paymentMethod);
      }

      if (bankId != null) {
        hasFields = true;
        mp.fields['bankId'] = parameterToString(bankId);
      }

      if (hasFields) postBody = mp;
    } else {
      if (reservationId != null)
        formParams['reservationId'] = parameterToString(reservationId);
      if (paymentMethod != null)
        formParams['paymentMethod'] = parameterToString(paymentMethod);
      if (bankId != null) formParams['bankId'] = parameterToString(bankId);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20011')
          as InlineResponse20011;
    } else {
      return null;
    }
  }

  /// 1. Create a new wallet reservation
  ///
  /// In this step, users create a wallet reservation order, by providing details about their order, partners also can pass some details like their &#x60;API_KEY&#x60; etc.  For the sake of simplification, the arguments are grouped into three categories, as follows:  &lt;!-- type: tab title: Order parameters --&gt; #### 1. Order parameters.  A user needs to pass the details of their intended order, like the type and amount of cryptocurrency they&#39;d like to buy, the fiat currency they&#39;d like use to pay for the order.  The following table contains a full list of order arguments.  | Argument | Description | Type | Required | |----|----|----| | fiatCurrency | Fiat currency which the users wants to buy/sell | &#x60;string&#x60; | &#x60;true&#x60; | | cryptoCurrency | Crypto currency which the users wants to sell/buy | &#x60;string&#x60; | &#x60;true&#x60; | | fiatAmount | Fiat amount that is required to buy/sell | &#x60;number&#x60; |  &#x60;true&#x60; | cryptoAmount | Crypto amount that is required to sell/buy | &#x60;number&#x60; | &#x60;false&#x60; | | paymentMethod | Payment method id, ex: &#x60;gbp_bank_transfer&#x60; | &#x60;string&#x60; | &#x60;true&#x60; | | walletAddress | Users wallet address  | &#x60;string&#x60; | &#x60;true&#x60; | addressAdditionalData | address additional data like memo Id | &#x60;string&#x60; | &#x60;false&#x60; | | network | Crypto network id. Example &#x60;BEP2&#x60;, &#x60;ERC-20&#x60; | &#x60;string&#x60; | &#x60;false&#x60; | | quoteId | Quote ID, Is gotten from [/currencies/price](1.swagger.yaml/paths/~1currencies~1price/get) endpoint | &#x60;string&#x60; | &#x60;false&#x60; | | isBuyOrSell | Is &#x60;BUY&#x60; or &#x60;SELL&#x60; | &#x60;string&#x60; | &#x60;true&#x60; |    &lt;!-- type: tab title: Partner parameters --&gt; #### 2. Partner parameters  Partners can use these arguments depends on their needs, for example, the &#x60;redirectURL&#x60; where a partner can redirect their users after completing an order.  &gt;  The most important argument is the &#x60;partnerApiKey&#x60;, this is the connection between a partner and their users  The following table contains a full list of partner arguments.  | Argument | Description | Type | Required | | ----- | ---- | ------ | -------- | | partnerApiKey | The partner API KEY to send the co-brand email | &#x60;string&#x60; | &#x60;false&#x60; | | partnerAPISecret | Enter the partner API SECRET | &#x60;string&#x60; | &#x60;false&#x60; | | partnerOrderId | Partner order Id | &#x60;string&#x60; | &#x60;false&#x60; | | partnerCustomerId | Partner customer Id | &#x60;string&#x60; | &#x60;false&#x60; | | redirectURL | A URL to redirect users once they complete an order  | &#x60;string&#x60; | &#x60;false&#x60; |   &lt;!-- type: tab title: User parameters --&gt; #### 3. User parameters.  Here, User basic details could be passed, these details will be auto filled for them automatically in the [KYC forms](1.swagger.yaml/paths/~1orders~1forms/get)  The following table contains a full list of order arguments.   | Argument | Description | Type | Required | | ----- | ---- | ------ | -------- | | email | enter the email address | &#x60;string&#x60; | &#x60;false&#x60; | | first_name | enter your first_name | &#x60;string&#x60; | &#x60;false&#x60; | | last_name | enter your last_name | &#x60;string&#x60; | &#x60;false&#x60; | | dob | enter your dob DD-MM-YYYY | &#x60;string&#x60; | &#x60;false&#x60; | | mobileNumber | enter your mobileNumber | &#x60;string&#x60; | &#x60;false&#x60; | | addressLine1 | enter your address1 | &#x60;string&#x60; | &#x60;false&#x60; | | addressLine2 | enter your addressLine2 | &#x60;string&#x60; | &#x60;false&#x60; | | state | enter your state | &#x60;string&#x60; | &#x60;false&#x60; | | city | enter your city | &#x60;string&#x60; | &#x60;false&#x60; | | postCode | enter your postCode | &#x60;string&#x60; | &#x60;false&#x60; | | country | enter your country | &#x60;string&#x60; | &#x60;false&#x60; |  &lt;!-- type: tab-end --&gt;  The provided arguments in this resource will determine the user KYC and Order Forms, Here are two examples. 1. If paymentMethod is &#x60;credit_debit_card&#x60; [Order forms](1.swagger.yaml/paths/~1orders~1forms/get) will contain a Billing address form. 2. If paymentMethod is &#x60;gbp_bank_transfer&#x60; [Order forms](1.swagger.yaml/paths/~1orders~1forms/get) will contain a UK Bank form.
  Future<InlineResponse20013> ordersCreateOrderReservation(
      String contentType,
      String fiatCurrency,
      String cryptoCurrency,
      double fiatAmount,
      String paymentMethod,
      String walletAddress,
      String isBuyOrSell,
      {double cryptoAmount,
      String addressAdditionalData,
      String network,
      String quoteId,
      String partnerApiKey,
      String partnerAPISecret,
      String partnerOrderId,
      String partnerCustomerId,
      String redirectURL,
      String email,
      String firstName,
      String lastName,
      String dob,
      String mobileNumber,
      String addressLine1,
      String addressLine2,
      String state,
      String city,
      String postCode,
      String country}) async {
    Object postBody = null;
    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    // verify required params are set
    if (contentType == null) {
      throw new ApiException(400, "Missing required param: contentType");
    }
    if (fiatCurrency == null) {
      throw new ApiException(400, "Missing required param: fiatCurrency");
    }
    if (cryptoCurrency == null) {
      throw new ApiException(400, "Missing required param: cryptoCurrency");
    }
    if (fiatAmount == null) {
      throw new ApiException(400, "Missing required param: fiatAmount");
    }
    if (paymentMethod == null) {
      throw new ApiException(400, "Missing required param: paymentMethod");
    }
    if (walletAddress == null) {
      throw new ApiException(400, "Missing required param: walletAddress");
    }
    if (isBuyOrSell == null) {
      throw new ApiException(400, "Missing required param: isBuyOrSell");
    }

    // create path and map variables
    String path = "/orders/wallet-reserve".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Content-Type"] = contentType;

    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (fiatCurrency != null) {
        hasFields = true;
        mp.fields['fiatCurrency'] = parameterToString(fiatCurrency);
      }

      if (cryptoCurrency != null) {
        hasFields = true;
        mp.fields['cryptoCurrency'] = parameterToString(cryptoCurrency);
      }

      if (fiatAmount != null) {
        hasFields = true;
        mp.fields['fiatAmount'] = parameterToString(fiatAmount);
      }

      if (cryptoAmount != null) {
        hasFields = true;
        mp.fields['cryptoAmount'] = parameterToString(cryptoAmount);
      }

      if (paymentMethod != null) {
        hasFields = true;
        mp.fields['paymentMethod'] = parameterToString(paymentMethod);
      }

      if (walletAddress != null) {
        hasFields = true;
        mp.fields['walletAddress'] = parameterToString(walletAddress);
      }

      if (addressAdditionalData != null) {
        hasFields = true;
        mp.fields['addressAdditionalData'] =
            parameterToString(addressAdditionalData);
      }

      if (network != null) {
        hasFields = true;
        mp.fields['network'] = parameterToString(network);
      }

      if (quoteId != null) {
        hasFields = true;
        mp.fields['quoteId'] = parameterToString(quoteId);
      }

      if (isBuyOrSell != null) {
        hasFields = true;
        mp.fields['isBuyOrSell'] = parameterToString(isBuyOrSell);
      }

      if (partnerApiKey != null) {
        hasFields = true;
        mp.fields['partnerApiKey'] = parameterToString(partnerApiKey);
      }

      if (partnerAPISecret != null) {
        hasFields = true;
        mp.fields['partnerAPISecret'] = parameterToString(partnerAPISecret);
      }

      if (partnerOrderId != null) {
        hasFields = true;
        mp.fields['partnerOrderId'] = parameterToString(partnerOrderId);
      }

      if (partnerCustomerId != null) {
        hasFields = true;
        mp.fields['partnerCustomerId'] = parameterToString(partnerCustomerId);
      }

      if (redirectURL != null) {
        hasFields = true;
        mp.fields['redirectURL'] = parameterToString(redirectURL);
      }

      if (email != null) {
        hasFields = true;
        mp.fields['email'] = parameterToString(email);
      }

      if (firstName != null) {
        hasFields = true;
        mp.fields['first_name'] = parameterToString(firstName);
      }

      if (lastName != null) {
        hasFields = true;
        mp.fields['last_name'] = parameterToString(lastName);
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

      if (hasFields) postBody = mp;
    } else {
      if (fiatCurrency != null)
        formParams['fiatCurrency'] = parameterToString(fiatCurrency);
      if (cryptoCurrency != null)
        formParams['cryptoCurrency'] = parameterToString(cryptoCurrency);
      if (fiatAmount != null)
        formParams['fiatAmount'] = parameterToString(fiatAmount);
      if (cryptoAmount != null)
        formParams['cryptoAmount'] = parameterToString(cryptoAmount);
      if (paymentMethod != null)
        formParams['paymentMethod'] = parameterToString(paymentMethod);
      if (walletAddress != null)
        formParams['walletAddress'] = parameterToString(walletAddress);
      if (addressAdditionalData != null)
        formParams['addressAdditionalData'] =
            parameterToString(addressAdditionalData);
      if (network != null) formParams['network'] = parameterToString(network);
      if (quoteId != null) formParams['quoteId'] = parameterToString(quoteId);
      if (isBuyOrSell != null)
        formParams['isBuyOrSell'] = parameterToString(isBuyOrSell);
      if (partnerApiKey != null)
        formParams['partnerApiKey'] = parameterToString(partnerApiKey);
      if (partnerAPISecret != null)
        formParams['partnerAPISecret'] = parameterToString(partnerAPISecret);
      if (partnerOrderId != null)
        formParams['partnerOrderId'] = parameterToString(partnerOrderId);
      if (partnerCustomerId != null)
        formParams['partnerCustomerId'] = parameterToString(partnerCustomerId);
      if (redirectURL != null)
        formParams['redirectURL'] = parameterToString(redirectURL);
      if (email != null) formParams['email'] = parameterToString(email);
      if (firstName != null)
        formParams['first_name'] = parameterToString(firstName);
      if (lastName != null)
        formParams['last_name'] = parameterToString(lastName);
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
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20013')
          as InlineResponse20013;
    } else {
      return null;
    }
  }

  /// 2. Get order forms
  ///
  /// After providing details about the intended Order that a user would like to place, in the [wallet-reserve](1.swagger.yaml/paths/~1orders~1wallet-reserve/post) resource, Use the current resource to get the required order forms.  Currenty, there is two type of order forms:  &lt;!-- type: tab title: \&quot;Billing address form\&quot;  --&gt; #### 1. Billing address form  This form will be sent if the &#x60;paymentMethod&#x60; is &#x60;credit_debit_card&#x60;.   &lt;!-- type: tab title: \&quot;Bank form\&quot;  --&gt;  #### 2. Bank form  This form will be sent if the &#x60;paymentMethod&#x60; is one of the following:  &#x60;sepa_bank_transfer&#x60; &#x60;gbp_bank_transfer&#x60; &#x60;neft_bank_transfer&#x60; &#x60;interac_e_transfer&#x60; &#x60;upi&#x60;   &lt;!-- type: tab-end  --&gt;   &gt; Forms is dynamically generated based on  [order reservation](1.swagger.yaml/paths/~1orders~1wallet-reserve/post)   The main and most important properties of a form are  #### 1. Form Id A unique Id for the form, it can be used to render the forms dynamically, apply operations to an exact form, like state management, form validation, event handlers, etc.  A [React](https://reactjs.org/) example of dynamic form rendering:  &lt;!--  title: \&quot;formId property example\&quot;  --&gt; &#x60;&#x60;&#x60;json ... \&quot;formId\&quot;: \&quot;bankDetails\&quot;, ... &#x60;&#x60;&#x60;  #### 2. Form Name Or Form title!   &lt;!--  title: \&quot;formName property example\&quot;  --&gt; &#x60;&#x60;&#x60;json ... \&quot;formId\&quot;: \&quot;bankDetails\&quot;, // The formName property \&quot;formName\&quot;: \&quot;Bank Details\&quot;, ... &#x60;&#x60;&#x60;   #### 3. Endpoint  Each form has an endpoint property, which tells where to submit the form.  &lt;!--  title: \&quot;endpoint property example\&quot;  --&gt; &#x60;&#x60;&#x60;json ... \&quot;formId\&quot;: \&quot;bankDetails\&quot;, \&quot;formName\&quot;: \&quot;Bank Details\&quot;, // The endpoint property \&quot;endpoint\&quot;: {   \&quot;path\&quot;: \&quot;/banks\&quot;,   \&quot;method\&quot;: \&quot;post\&quot; }, ... &#x60;&#x60;&#x60;  #### 4. Tabs Each form has a tabs array, The tabs refers to the possible options for a user to submit a form, one example is the &#x60;Bank details&#x60; form, for some countries, let&#39;s say &#x60;India&#x60;, you&#39;ll find two options in the &#x60;tabs&#x60; array.  1. IMPS Bank account 2. UPI  &lt;!--  title: \&quot;tabs property example\&quot;  --&gt; &#x60;&#x60;&#x60;json \&quot;formId\&quot;: \&quot;bankDetails\&quot;, \&quot;formName\&quot;: \&quot;Bank Details\&quot;, \&quot;endpoint\&quot;: {   \&quot;path\&quot;: \&quot;/banks\&quot;,   \&quot;method\&quot;: \&quot;post\&quot; }, // The tabs property \&quot;tabs\&quot;: [   {     \&quot;name\&quot;: \&quot;Bank account\&quot;,     \&quot;id\&quot;: \&quot;accountNumber\&quot;,     \&quot;group\&quot;: \&quot;New\&quot;,     \&quot;message\&quot;: \&quot;Add your bank account details for IMPS payments\&quot;,     \&quot;type\&quot;: \&quot;tab\&quot;,     \&quot;fields\&quot;: [...]   },   {     \&quot;name\&quot;: \&quot;UPI\&quot;,     \&quot;id\&quot;: \&quot;upi\&quot;,     \&quot;group\&quot;: \&quot;New\&quot;,     \&quot;message\&quot;: \&quot;Add your UPI / VPA ID for UPI payments\&quot;,     \&quot;fields\&quot;: [...]   } ], ... &#x60;&#x60;&#x60; As you see above, each tab has many properties, like &#x60;id&#x60;, &#x60;name&#x60;, &#x60;message&#x60;, and others.  Most of these properties are clear enough, although you can check the response schema at the end of this resource to know more about them, The one that requires more clarification is the &#x60;fields&#x60; property, which we&#39;ll talk about next.  #### 5. Fields.  For each tab, all arguments are represented in the &#x60;fields&#x60; array.  The &#x60;id&#x60; of a field is the argument name itself that to be sent in to the resource. There are other useful properties as well, like &#x60;type&#x60;, &#x60;isRequired&#x60;, &#x60;value&#x60; which has a value if user already provided this field before, so it is like autofilling form, but from the backend, and other properties.  &lt;!--  title: \&quot;fields property example\&quot;  --&gt; &#x60;&#x60;&#x60;json \&quot;formId\&quot;: \&quot;bankDetails\&quot;, \&quot;formName\&quot;: \&quot;Bank Details\&quot;, \&quot;endpoint\&quot;: {   \&quot;path\&quot;: \&quot;/banks\&quot;,   \&quot;method\&quot;: \&quot;post\&quot; }, \&quot;tabs\&quot;: [   {     \&quot;name\&quot;: \&quot;Bank account\&quot;,     \&quot;id\&quot;: \&quot;accountNumber\&quot;,     \&quot;group\&quot;: \&quot;New\&quot;,     \&quot;message\&quot;: \&quot;Add your bank account details for IMPS payments\&quot;,     \&quot;type\&quot;: \&quot;tab\&quot;,     // The fields property     \&quot;fields\&quot;: [       {         \&quot;name\&quot;: \&quot;type\&quot;,         \&quot;id\&quot;: \&quot;detailsType\&quot;,         \&quot;type\&quot;: \&quot;hidded\&quot;,         \&quot;value\&quot;: \&quot;accountNumber\&quot;       },       {         \&quot;name\&quot;: \&quot;Full name of the account holder\&quot;,         \&quot;id\&quot;: \&quot;holderName\&quot;,         \&quot;type\&quot;: \&quot;text\&quot;,         \&quot;value\&quot;: \&quot; \&quot;,         \&quot;regex\&quot;: \&quot;^(?!s*$).+\&quot;,         \&quot;format\&quot;: \&quot;\&quot;,         \&quot;isRequired\&quot;: false,         \&quot;disabled\&quot;: true,         \&quot;placeholder\&quot;: \&quot;\&quot;       },       {         \&quot;name\&quot;: \&quot;Account Number\&quot;,         \&quot;id\&quot;: \&quot;accountNumber\&quot;,         \&quot;type\&quot;: \&quot;number\&quot;,         \&quot;value\&quot;: \&quot;\&quot;,         \&quot;regex\&quot;: \&quot;^[0-9][A-Za-z0-9 -]*$\&quot;,         \&quot;format\&quot;: \&quot;\&quot;,         \&quot;isRequired\&quot;: true,         \&quot;placeholder\&quot;: \&quot;\&quot;       },     ]   },   {     \&quot;name\&quot;: \&quot;UPI\&quot;,     \&quot;id\&quot;: \&quot;upi\&quot;,     \&quot;group\&quot;: \&quot;New\&quot;,     \&quot;message\&quot;: \&quot;Add your UPI / VPA ID for UPI payments\&quot;,     \&quot;fields\&quot;: [...]   } ], ... &#x60;&#x60;&#x60;
  Future<InlineResponse20012> ordersGetForms(String reservationId) async {
    Object postBody = null;

    // verify required params are set
    if (reservationId == null) {
      throw new ApiException(400, "Missing required param: reservationId");
    }

    // create path and map variables
    String path = "/orders/forms".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20012')
          as InlineResponse20012;
    } else {
      return null;
    }
  }

  /// 7. Get order by id
  ///
  /// Use this resource to find an order by its Id
  Future<InlineResponse20011> ordersGetOrder(
      String orderId, String authorization) async {
    Object postBody = null;

    // verify required params are set
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/orders/{orderId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "orderId" + "}", orderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["authorization"] = authorization;

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
      return apiClient.deserialize(response.body, 'InlineResponse20011')
          as InlineResponse20011;
    } else {
      return null;
    }
  }

  /// 6. Get orders
  ///
  /// Use this resource to get all orders for an authenticated user.
  Future<List<OrdersV2>> ordersGetOrders(String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if (accessToken == null) {
      throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/orders".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<OrdersV2>') as List)
          .map((item) => item as OrdersV2)
          .toList();
    } else {
      return null;
    }
  }

  /// 4. Confirm order payment
  ///
  /// Once a user marks order payment as done, Use this resource to confirm the order.
  Future<InlineResponse20011> ordersPaymentConfirmation(
      String orderId, String paymentOptionId) async {
    Object postBody = null;

    // verify required params are set
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }
    if (paymentOptionId == null) {
      throw new ApiException(400, "Missing required param: paymentOptionId");
    }

    // create path and map variables
    String path = "/orders/payment-confirmation".replaceAll("{format}", "json");

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

      if (orderId != null) {
        hasFields = true;
        mp.fields['orderId'] = parameterToString(orderId);
      }

      if (paymentOptionId != null) {
        hasFields = true;
        mp.fields['paymentOptionId'] = parameterToString(paymentOptionId);
      }

      if (hasFields) postBody = mp;
    } else {
      if (orderId != null) formParams['orderId'] = parameterToString(orderId);
      if (paymentOptionId != null)
        formParams['paymentOptionId'] = parameterToString(paymentOptionId);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20011')
          as InlineResponse20011;
    } else {
      return null;
    }
  }
}
