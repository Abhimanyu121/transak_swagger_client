part of swagger.api;

class FileV2 {
  /* The key of the file that you have generated using the GET `/user/files/presignedurl` endpoint */
  String key = null;
  
/* A URL to view the document */
  String url = null;
  
/* Document id, examples are passport, driving_licence, etc */
  String documentId = null;
  
/* Document type, types are [`idProof`, `addressProof`, `incomeProof`, `selfie`] */
  String type = null;
  
/* Document side, one of [`front`, `back`] */
  String side = null;
  
/* Document issuing country */
  String country = null;
  
  FileV2();

  @override
  String toString() {
    return 'FileV2[key=$key, url=$url, documentId=$documentId, type=$type, side=$side, country=$country, ]';
  }

  FileV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key =
        json['key']
    ;
    url =
        json['url']
    ;
    documentId =
        json['documentId']
    ;
    type =
        json['type']
    ;
    side =
        json['side']
    ;
    country =
        json['country']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'url': url,
      'documentId': documentId,
      'type': type,
      'side': side,
      'country': country
     };
  }

  static List<FileV2> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileV2>() : json.map((value) => new FileV2.fromJson(value)).toList();
  }

  static Map<String, FileV2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileV2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileV2.fromJson(value));
    }
    return map;
  }
}

