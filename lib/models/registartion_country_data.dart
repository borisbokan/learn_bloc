class RegistrationCountryData {
  RegistrationCountryData({this.cities, this.phoneCode, this.countryName});

  List<String>? cities = [];
  List<String>? phoneCode;
  String? countryName;

  List<String>? get getCities {
    return cities;
  }

  void setCities(List<String> cities) {
    cities = cities;
  }

  List<String>? get getPhoneCode {
    return phoneCode;
  }

  void setPhoneCode(List<String> phoneCode) {
    phoneCode = phoneCode;
  }

  String? get getCountryName {
    return countryName;
  }

  void setCountryName(String? countryName) {
    countryName = countryName;
  }

  factory RegistrationCountryData.fromJson(Map<String, dynamic>? json) {
    List<String> getCities = [];
    if (json!['cities'] != null) {
      json['cities'].forEach((value) {
        getCities.add(value);
      });
    }

    List<String> getPhoneCodes = [];
    if (json['phoneCode'] != null) {
      json['phoneCode'].forEach((value) {
        getPhoneCodes.add(value);
      });
    }

    return RegistrationCountryData(
      cities: getCities,
      phoneCode: getPhoneCodes,
      countryName: json['countryName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cities': cities,
      'phoneCode': phoneCode,
      'countryName': countryName,
    };
  }
}
