import 'package:lear_bloc/models/review.dart';
import 'package:lear_bloc/models/service.dart';
import 'package:lear_bloc/models/user_info_model.dart';

class Offered {
  Offered(
      {this.id,
      this.tokens,
      this.offeredServices,
      this.requestedServiceIds,
      this.arrangements,
      this.averageRating,
      this.reviews,
      this.familyGroupId,
      this.offeredServicesDoneCount,
      this.requestedServicesDoneCount,
      this.totalLikes,
      this.totalDislikes,
      this.userInfo,
      this.firebaseId,
      this.totalDealsDone,
      this.showMyAddress});

  String? id; //id user
  int? tokens;
  List<Service>? offeredServices = [];
  List<String>? requestedServiceIds = [];
  List<String>? arrangements = [];
  double? averageRating;
  List<Review>? reviews = [];
  String? familyGroupId;
  int? offeredServicesDoneCount;
  int? requestedServicesDoneCount;
  int? totalLikes;
  int? totalDislikes;
  UserInfo? userInfo;
  String? firebaseId;
  int? totalDealsDone;
  bool? showMyAddress;

  factory Offered.fromJson(dynamic json) {
    List<Service>? offeredServices = [];
    List<String>? requestedServiceIds = [];
    List<String>? arrangements = [];
    List<Review>? reviews = [];
    UserInfo? userInfo;

    if (json['offeredServices'] != null) {
      json['offeredServices'].forEach((value) {
        offeredServices.add(Service.fromJson(value));
      });
    }

    if (json['requestedServiceIds'] != null) {
      json['requestedServiceIds'].forEach((value) {
        requestedServiceIds.add(value);
      });
    }

    if (json['arrangements'] != null) {
      json['arrangements'].forEach((value) {
        if (value != null) {
          arrangements.add(value);
        }
      });
    }

    if (json['reviews'] != null) {
      json['reviews'].forEach((value) {
        reviews.add(Review.fromJson(value));
      });
    }

    if (json['userInfo'] != null) {
      userInfo = UserInfo.fromJson(json['userInfo']);
    }

    return Offered(
        id: json['id'], //id user
        tokens: json['tokens'],
        offeredServices: offeredServices, //[]
        requestedServiceIds: requestedServiceIds, //[]
        arrangements: arrangements, //[],
        averageRating: json['averageRating'],
        reviews: reviews,
        familyGroupId: json['familyGroupId'],
        offeredServicesDoneCount: json['offeredServicesDoneCount'],
        requestedServicesDoneCount: json['requestedServicesDoneCount'],
        totalLikes: json['totalLikes'],
        totalDislikes: json['totalDislikes'],
        userInfo: userInfo,
        firebaseId: json['firebaseId'],
        totalDealsDone: json['totalDealsDone'],
        showMyAddress: json['showMyAddress']);
  }
}
