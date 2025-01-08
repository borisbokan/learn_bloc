import 'package:lear_bloc/helpers/date_covertor.dart';

import 'address.dart';

class UserInfo {
  static const String GENDER_TYPE_MALE = "MALE";
  static const String GENDER_TYPE_FEMALE = "FEMALE";
  static const String GENDER_TYPE_OTHER = "OTHER";

  UserInfo(
      {this.lastName,
      this.firstName,
      this.name,
      this.gender,
      this.address,
      this.birthDate,
      this.email,
      this.password,
      this.phoneNumber,
      this.created,
      this.avatarId,
      this.avatarImageBase64,
      this.avatarExtension,
      this.bonusTokenForEmailVerificationClaimed});

  String? lastName;
  String? firstName;
  String? name;
  String? gender;
  int? birthDate;
  Address? address;
  String? email;
  String? password;
  String? phoneNumber;
  int? created;
  String? avatarId;
  String? avatarImageBase64;
  String? avatarExtension;
  bool? bonusTokenForEmailVerificationClaimed = false;

  int? get userAge => DateTime.now().year - DateConvertor(birthDate!).year!;

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      name: json['name'],
      lastName: json['lastName'],
      firstName: json['firstName'],
      birthDate: json['birthDate'] as int,
      address: Address.fromJson(json['address']),
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phoneNumber'],
      created: json['created'],
      gender: json['gender'],
      avatarId: json['avatarId'],
      avatarImageBase64: json['avatarImageBase64'],
      bonusTokenForEmailVerificationClaimed:
          json['bonusTokenForEmailVerificationClaimed'],
    );
  }

  Map<String, dynamic> toJson() {
    Map? address = this.address?.toJson();

    return {
      'name': name,
      'lastName': lastName,
      'firstName': firstName,
      'birthDate': birthDate,
      'address': address,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'created': created,
      'gender': gender,
      'avatarId': avatarId,
      'avatarImageBase64': avatarImageBase64,
      'bonusTokenForEmailVerificationClaimed':
          bonusTokenForEmailVerificationClaimed,
    };
  }
}
