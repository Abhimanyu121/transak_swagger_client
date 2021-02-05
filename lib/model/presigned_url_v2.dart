part of swagger.api;

class PresignedUrlV2 {
  /* Presigned URL to upload the file to */
  String presignedUrl = null;
  
/* Method that is used to upload the file, Allways PUT */
  String method = null;
  
/* file key, which is used in the next request to update user data */
  String key = null;
  
  PresignedUrlV2();

  @override
  String toString() {
    return 'PresignedUrlV2[presignedUrl=$presignedUrl, method=$method, key=$key, ]';
  }

  PresignedUrlV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    presignedUrl =
        json['presignedUrl']
    ;
    method =
        json['method']
    ;
    key =
        json['key']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'presignedUrl': presignedUrl,
      'method': method,
      'key': key
     };
  }

  static List<PresignedUrlV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<PresignedUrlV2>() : json.map((value) => new PresignedUrlV2.fromJson(value)).toList();
  }

  static Map<String, PresignedUrlV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PresignedUrlV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PresignedUrlV2.fromJson(value));
    }
    return map;
  }
}

