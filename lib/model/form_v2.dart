part of swagger.api;

class FormV2 {
  /* form id */
  String formId = null;
  
/* form name/title */
  String formName = null;
  
/* message to a user, could be any heping information about the form */
  String message = null;
  
/* each form has a step, which indicate the sequance of the forms */
  String step = null;
  

  FormV2Endpoint endpoint = null;
  
/* tabs is a list of possible ways that a user can choose between to pass this form, in some cases there is only one way, say in personal details form, other cases like uploading document for idProof, or use an automated kyc from a third party. */
  List<FormV2Tabs> tabs = [];
  
  FormV2();

  @override
  String toString() {
    return 'FormV2[formId=$formId, formName=$formName, message=$message, step=$step, endpoint=$endpoint, tabs=$tabs, ]';
  }

  FormV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    formId =
        json['formId']
    ;
    formName =
        json['formName']
    ;
    message =
        json['message']
    ;
    step =
        json['step']
    ;
    endpoint =
      
      
      new FormV2Endpoint.fromJson(json['endpoint'])
;
    tabs =
      FormV2Tabs.listFromJson(json['tabs'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'formId': formId,
      'formName': formName,
      'message': message,
      'step': step,
      'endpoint': endpoint,
      'tabs': tabs
     };
  }

  static List<FormV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormV2>() : json.map((value) => new FormV2.fromJson(value)).toList();
  }

  static Map<String, FormV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormV2.fromJson(value));
    }
    return map;
  }
}

