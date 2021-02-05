part of swagger.api;

class UserV2Response {
  /* User's Id */
  String id = null;

/* User's first name */
  String firstName = null;

/* User's last name */
  String lastName = null;

/* User's email address */
  String email = null;

/* User's mobile number */
  String mobileNumber = null;

/* Indicates if a user verified their email */
  bool emailVerified = null;

/* User's date of birth */
  String dob = null;

  UserV2ResponseAddress address = null;

  UserV2ResponseLastLogin lastLogin = null;

/* KYC Status, one of: ['NOT_SUBMITTED', 'SUBMITTED', 'APPROVED', 'REJECTED'] */
  String kycStatus = null;

/* User status, one of ['active', 'disabled'] */
  String status = null;

  UserV2ResponseKyc kyc = null;

/* Last date of updating a user */
  String updatedAt = null;

  UserV2ResponseBillingAddress billingAddress = null;

/* User's bank accounts */
  List<Object> banks = [];

  UserV2Response();

  @override
  String toString() {
    return 'UserV2Response[id=$id, firstName=$firstName, lastName=$lastName, email=$email, mobileNumber=$mobileNumber, emailVerified=$emailVerified, dob=$dob, address=$address, lastLogin=$lastLogin, kycStatus=$kycStatus, status=$status, kyc=$kyc, updatedAt=$updatedAt, billingAddress=$billingAddress, banks=$banks, ]';
  }

  UserV2Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    mobileNumber = json['mobileNumber'];
    emailVerified = json['emailVerified'];
    dob = json['dob'];
    address = new UserV2ResponseAddress.fromJson(json['address']);
    lastLogin = new UserV2ResponseLastLogin.fromJson(json['lastLogin']);
    kycStatus = json['kycStatus'];
    status = json['status'];
    kyc = new UserV2ResponseKyc.fromJson(json['kyc']);
    updatedAt = json['updatedAt'];
    billingAddress =
        new UserV2ResponseBillingAddress.fromJson(json['billingAddress']);
    banks = UserV2Response.listFromJson(json['banks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'mobileNumber': mobileNumber,
      'emailVerified': emailVerified,
      'dob': dob,
      'address': address,
      'lastLogin': lastLogin,
      'kycStatus': kycStatus,
      'status': status,
      'kyc': kyc,
      'updatedAt': updatedAt,
      'billingAddress': billingAddress,
      'banks': banks
    };
  }

  static List<UserV2Response> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UserV2Response>()
        : json.map((value) => new UserV2Response.fromJson(value)).toList();
  }

  static Map<String, UserV2Response> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserV2Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UserV2Response.fromJson(value));
    }
    return map;
  }
}
