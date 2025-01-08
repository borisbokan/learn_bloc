class BillingResult {
  BillingContact? billingContact;
  String? transactionIdentifier;
  String? token;
  PaymentMethod? paymentMethod;
  

  BillingResult({
    this.billingContact,
    this.transactionIdentifier,
    this.token,
    this.paymentMethod,
  });

  BillingResult.fromJson(Map<String, dynamic> json) {
    billingContact = json['billingContact'] != null
        ? new BillingContact.fromJson(json['billingContact'])
        : null;
    transactionIdentifier = json['transactionIdentifier'];
    token = json['token'];
    paymentMethod = json['paymentMethod'] != null
        ? new PaymentMethod.fromJson(json['paymentMethod'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.billingContact != null) {
      data['billingContact'] = this.billingContact?.toJson();
    }
    data['transactionIdentifier'] = this.transactionIdentifier;
    data['token'] = this.token;
    if (this.paymentMethod != null) {
      data['paymentMethod'] = this.paymentMethod?.toJson();
    }

    return data;
  }
}

class BillingContact {
  PostalAddress? postalAddress;
  Name? name;

  BillingContact({this.postalAddress, this.name});

  BillingContact.fromJson(Map<String, dynamic> json) {
    postalAddress = json['postalAddress'] != null
        ? new PostalAddress.fromJson(json['postalAddress'])
        : null;
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.postalAddress != null) {
      data['postalAddress'] = this.postalAddress?.toJson();
    }
    if (this.name != null) {
      data['name'] = this.name?.toJson();
    }
    return data;
  }
}

class PostalAddress {
  String? state;
  String? subLocality;
  String? postalCode;
  String? subAdministrativeArea;
  String? isoCountryCode;
  String? street;
  String? city;
  String? country;

  PostalAddress(
      {this.state,
      this.subLocality,
      this.postalCode,
      this.subAdministrativeArea,
      this.isoCountryCode,
      this.street,
      this.city,
      this.country});

  PostalAddress.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    subLocality = json['subLocality'];
    postalCode = json['postalCode'];
    subAdministrativeArea = json['subAdministrativeArea'];
    isoCountryCode = json['isoCountryCode'];
    street = json['street'];
    city = json['city'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['subLocality'] = this.subLocality;
    data['postalCode'] = this.postalCode;
    data['subAdministrativeArea'] = this.subAdministrativeArea;
    data['isoCountryCode'] = this.isoCountryCode;
    data['street'] = this.street;
    data['city'] = this.city;
    data['country'] = this.country;
    return data;
  }
}

class Name {
  PhoneticRepresentation? phoneticRepresentation;
  String? middleName;
  String? familyName;
  String? namePrefix;
  String? nickname;
  String? givenName;
  String? nameSuffix;

  Name(
      {this.phoneticRepresentation,
      this.middleName,
      this.familyName,
      this.namePrefix,
      this.nickname,
      this.givenName,
      this.nameSuffix});

  Name.fromJson(Map<String, dynamic> json) {
    phoneticRepresentation = json['phoneticRepresentation'] != null
        ? new PhoneticRepresentation.fromJson(json['phoneticRepresentation'])
        : null;
    middleName = json['middleName'];
    familyName = json['familyName'];
    namePrefix = json['namePrefix'];
    nickname = json['nickname'];
    givenName = json['givenName'];
    nameSuffix = json['nameSuffix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.phoneticRepresentation != null) {
      data['phoneticRepresentation'] = this.phoneticRepresentation?.toJson();
    }
    data['middleName'] = this.middleName;
    data['familyName'] = this.familyName;
    data['namePrefix'] = this.namePrefix;
    data['nickname'] = this.nickname;
    data['givenName'] = this.givenName;
    data['nameSuffix'] = this.nameSuffix;
    return data;
  }
}

class PhoneticRepresentation {
  String? phoneticRepresentation;
  String? nameSuffix;
  String? givenName;
  String? middleName;
  String? familyName;
  String? nickname;
  String? namePrefix;

  PhoneticRepresentation(
      {this.phoneticRepresentation,
      this.nameSuffix,
      this.givenName,
      this.middleName,
      this.familyName,
      this.nickname,
      this.namePrefix});

  PhoneticRepresentation.fromJson(Map<String, dynamic> json) {
    phoneticRepresentation = json['phoneticRepresentation'];
    nameSuffix = json['nameSuffix'];
    givenName = json['givenName'];
    middleName = json['middleName'];
    familyName = json['familyName'];
    nickname = json['nickname'];
    namePrefix = json['namePrefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneticRepresentation'] = this.phoneticRepresentation;
    data['nameSuffix'] = this.nameSuffix;
    data['givenName'] = this.givenName;
    data['middleName'] = this.middleName;
    data['familyName'] = this.familyName;
    data['nickname'] = this.nickname;
    data['namePrefix'] = this.namePrefix;
    return data;
  }
}

class PaymentMethod {
  String? displayName;
  String? network;
  int? type;

  PaymentMethod({this.displayName, this.network, this.type});

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    network = json['network'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['network'] = this.network;
    data['type'] = this.type;
    return data;
  }
}
