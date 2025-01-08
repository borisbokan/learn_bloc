import 'package:lear_bloc/models/pro_user_data.dart';
import 'package:lear_bloc/models/review.dart';
import 'package:lear_bloc/models/service.dart';

import 'user_info_model.dart';

class User {
  User({
    this.id,
    this.userImagePath,
    this.tokens,
    this.offeredServices,
    this.requestedServiceIds,
    this.arrangements,
    this.averageRating,
    this.reviews,
    this.offeredServicesDoneCount,
    this.requestedServicesDoneCount,
    this.totalLikes,
    this.totalDislikes,
    this.ratings,
    this.firebaseId,
    this.totalDealsDone,
    this.familyGroupId,
    this.userInfo,
    this.fcmToken,
    this.referralCode,
    this.showMyAddress,
    this.hiddenUsers,
    this.blockedUsers,
    this.blockedByOthers,
    this.userType,
    this.proUserData,
  });

  String? id;
  String? userImagePath;
  int? tokens; //number of coins
  List<Service>? offeredServices;
  List<String>? requestedServiceIds = [];
  List<String>? arrangements = [];
  double? averageRating;
  List<dynamic>? ratings = [];
  List<Review>? reviews = [];
  int? totalDealsDone;
  String? familyGroupId;
  int? offeredServicesDoneCount;
  int? requestedServicesDoneCount;
  int? totalLikes;
  int? totalDislikes;
  UserInfo? userInfo;
  String? firebaseId;
  String? fcmToken;
  String? referralCode;
  bool? showMyAddress = false;
  Map<String, dynamic>? hiddenUsers = {};
  Map<String, dynamic>? blockedUsers = {};
  List<String>? blockedByOthers = [];
  String? userType;
  PROUserData? proUserData;

  factory User.clone(User userToCopy) {
    return userToCopy;
  }

  factory User.fromJson(Map<String, dynamic> json) {
    List<Service>? offerSer = [];
    List<String>? requServIds = [];
    //List<Arrangement> arrangaments = [];
    List<String>? arrangaments = [];
    List<Review>? reviews = [];
    List<int>? ratings = [];
    List<String>? blockByOthers = [];
    PROUserData? _proUser;

    if (json['offeredServices'] != null) {
      json['offeredServices'].forEach((value) {
        offerSer.add(Service.fromJson(value));
      });
    }

    if (json['requestedServiceIds'] != null) {
      json['requestedServiceIds'].forEach((value) {
        requServIds.add(value as String);
      });
    }

    if (json['arrangements'] != null) {
      json['arrangements'].forEach((value) {
        arrangaments.add(value);
      });
    }

    if (json['reviews'] != null) {
      json['reviews'].forEach((value) {
        reviews.add(Review.fromJson(value));
      });
    }

    if (json['ratings'] != null) {
      json['ratings'].forEach((value) {
        ratings.add(value);
      });
    }

    if (json['blockedByOthers'] != null) {
      json['blockedByOthers'].forEach((value) {
        blockByOthers.add(value);
      });
    }

    if (json['proUserData'] != null) {
      _proUser = PROUserData.fromJson(json['proUserData']);
    }

    return User(
        id: json['id'],
        tokens: json['tokens'],
        ratings: ratings,
        offeredServices: offerSer,
        requestedServiceIds: requServIds,
        arrangements: arrangaments,
        averageRating: json['averageRating'],
        reviews: reviews,
        offeredServicesDoneCount: json['offeredServicesDoneCount'],
        requestedServicesDoneCount: json['requestedServicesDoneCount'],
        totalLikes: json['totalLikes'],
        totalDislikes: json['totalDislikes'],
        userInfo: UserInfo.fromJson(json['userInfo']),
        totalDealsDone: json['totalDealsDone'],
        firebaseId: json['firebaseId'],
        fcmToken: json['fcmToken'],
        referralCode: json['referralCode'],
        showMyAddress: json['showMyAddress'],
        hiddenUsers: json['hiddenUsers'],
        blockedUsers: json['blockedUsers'],
        blockedByOthers: blockByOthers,
        userType: json['userType'],
        proUserData: _proUser);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "tokens": tokens,
      "offeredServices": offeredServices?.map((e) => e.toJson()).toList(),
      "requestedServiceIds": requestedServiceIds?.map((e) => e).toList() ?? [],
      "arrangaments":
          arrangements, //arrangements.map((e) => e.toJson()).toList() ?? [],
      "averageRating": averageRating,
      "reviews": reviews?.map((e) => e.toJson()).toList() ?? [],
      "offeredServicesDoneCount": offeredServicesDoneCount,
      "requestedServicesDoneCount": requestedServicesDoneCount,
      "totalLikes": totalLikes,
      "totalDislikes": totalDislikes,
      "familyGroupId": familyGroupId,
      "ratings": ratings,
      "totalDealsDone": totalDealsDone,
      "userInfo": userInfo?.toJson(),
      "firebaseId": firebaseId,
      'fcmToken': fcmToken,
      'referralCode': referralCode,
      'showMyAddress': showMyAddress,
      'hiddenUsers': hiddenUsers,
      'blockedUsers': blockedUsers,
      'blockedByOthers': blockedByOthers,
      "userType": userType,
      "proUserData": proUserData,
    };
  }
}

enum TypeOfUsers {
  REGULAR,
  PRO,
}
