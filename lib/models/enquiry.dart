import 'package:lear_bloc/models/user_info_model.dart';

class Enquiry {
  Enquiry({
    this.id,
    this.serviceType,
    this.requestCreatedDate,
    this.requestedUserId,
    this.proUserId,
    this.userInfoPro,
    this.userInfoRequest,
    this.imageIds,
    this.seen,
    this.description,
  });
  String? id;
  String? serviceType;
  int? requestCreatedDate;
  String? requestedUserId;
  String? proUserId;
  UserInfo? userInfoPro;
  UserInfo? userInfoRequest;
  List<String>? imageIds = [];
  bool? seen;
  String? description;

  String? get getId => this.id;
  set setId(String? id) => this.id = id;
  String? get getServiceType => this.serviceType;
  set setServiceType(serviceType) => this.serviceType = serviceType;
  int? get getRequestCreatedDate => this.requestCreatedDate;
  set setRequestCreatedDate(value) => this.requestCreatedDate = value;
  String? get getRequestedUserId => this.requestedUserId;
  set setRequestedUserId(requestedUserId) =>
      this.requestedUserId = requestedUserId;
  String? get getProUserId => this.proUserId;
  set setProUserId(proUserId) => this.proUserId = proUserId;
  UserInfo? get getUserInfoPro => this.userInfoPro;
  set setUserInfoPro(userInfoPro) => this.userInfoPro = userInfoPro;
  UserInfo? get getUserInfoRequest => this.userInfoRequest;
  set setUserInfoRequest(userInfoRequest) =>
      this.userInfoRequest = userInfoRequest;
  List<String>? get getImageIds => this.imageIds;
  set setImageIds(List<String> imageIds) => this.imageIds = imageIds;
  bool? get isSeen => this.seen;
  set setSeen(seen) => this.seen = seen;
  String? get getDescription => this.description;
  set setDescription(String? description) => this.description = description;

  factory Enquiry.fromJson(dynamic json) {
    UserInfo? _userInfoPro;
    UserInfo? _userInfoRequest;
    List<String>? _imagesIds = [];

    if (json['userInfoPro'] != null) {
      _userInfoPro = UserInfo.fromJson(json['userInfoPro']);
    }
    if (json['userInfoRequest'] != null) {
      _userInfoRequest = UserInfo.fromJson(json['userInfoRequest']);
    }

    if (json['imageIds'] != null) {
      json['imageIds'].forEach((item) {
        _imagesIds.add(item);
      });
    }

    return Enquiry(
        id: json['id'],
        serviceType: json['serviceType'],
        requestCreatedDate: json['requestCreatedDate'],
        requestedUserId: json['requestedUserId'],
        proUserId: json['proUserId'],
        userInfoPro: _userInfoPro,
        userInfoRequest: _userInfoRequest,
        imageIds: _imagesIds,
        seen: json['seen'],
        description: json['description']);
  }

  Map<String, dynamic>? toJson() {
    return {
      'id': id,
      'serviceType': serviceType,
      'requestCreatedDate': requestCreatedDate,
      'requestedUserId': requestedUserId,
      'proUserId': proUserId,
      'userInfoPro': userInfoPro,
      'userInfoRequest': userInfoRequest,
      'imageIds': imageIds,
      'seen': seen,
      'description': description
    };
  }
}
