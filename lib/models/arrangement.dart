import 'package:lear_bloc/models/service.dart';
import 'package:lear_bloc/models/user_info_model.dart';

class Arrangement {
  Arrangement({
    this.id,
    this.requestedServiceId,
    this.service,
    this.requestCreatedDate,
    this.duration,
    this.durationDays,
    this.requestedUserId,
    this.offeredUserId,
    this.status,
    this.rejectedByUserId,
    this.canceledByUserId,
    this.tokens,
    this.creatorId,
    this.reviewedOfferUser,
    this.reviewedRequestedUser,
    this.userInfoOffer,
    this.userInfoRequest,
    this.needStartConfirmation,
    this.startedOfferUser,
    this.startedRequestedUser,
    this.version = 1,
    this.offeredUserLastSeenVersion = 0,
    this.requestedUserLastSeenVersion = 0,
    this.type,
    this.price,
    this.paymentTypes,
    this.currency,
  });

  String? id;
  String? requestedServiceId;
  Service? service;
  int? requestCreatedDate;
  String? requestedUserId;
  String? offeredUserId;
  String? status;
  String? rejectedByUserId;
  String? canceledByUserId;
  int? tokens;
  int? duration;
  int? durationDays;
  String? creatorId;
  bool? reviewedOfferUser;
  bool? reviewedRequestedUser;
  UserInfo? userInfoOffer;
  UserInfo? userInfoRequest;
  bool? needStartConfirmation = false;
  bool? startedOfferUser = false;
  bool? startedRequestedUser = false;
  int? version = 1;
  int? offeredUserLastSeenVersion = 0;
  int? requestedUserLastSeenVersion = 0;
  String? type; //PRO/REGULAR
  double? price;
  List<String>? paymentTypes;
  String? currency;

  factory Arrangement.fromJson(Map<String, dynamic>? json) {
    Service? service;
    UserInfo? userInfoOffer;
    UserInfo? userInfoRequest;
    List<String>? typePayments = [];

    if (json?['service'] != null) {
      service = Service.fromJson(json?['service']);
    }

    if (json?['userInfoOffer'] != null) {
      userInfoOffer = UserInfo.fromJson(json?['userInfoOffer']);
    }

    if (json?['userInfoRequest'] != null) {
      userInfoRequest = UserInfo.fromJson(json?['userInfoRequest']);
    }

    if (json?['paymentTypes'] != null) {
      json?['paymentTypes'].forEach((item) {
        typePayments.add(item);
      });
    }

    return Arrangement(
        id: json?['id'],
        requestedServiceId: json?['requestedServiceId'],
        service: service, //Service
        requestCreatedDate: json?['requestCreatedDate'],
        duration: json?['duration'],
        durationDays: json?['durationDays'],
        creatorId: json?['creatorId'],
        requestedUserId: json?['requestedUserId'],
        offeredUserId: json?['offeredUserId'],
        status: json?['status'],
        rejectedByUserId: json?['rejectedByUserId'],
        canceledByUserId: json?['canceledByUserId'],
        tokens: json?['tokens'],
        reviewedOfferUser: json?['reviewedOfferUser'],
        reviewedRequestedUser: json?['reviewedRequestedUser'],
        userInfoOffer: userInfoOffer,
        userInfoRequest: userInfoRequest,
        needStartConfirmation: json?['needStartConfirmation'],
        startedOfferUser: json?['startedOfferUser'],
        startedRequestedUser: json?['startedRequestUser'],
        version: json?['version'],
        offeredUserLastSeenVersion: json?['offeredUserLastSeenVersion'],
        requestedUserLastSeenVersion: json?['requestedUserLastSeenVersion'],
        type: json?['type'],
        price: json?['price'],
        paymentTypes: typePayments,
        currency: json?['currency']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "requestedServiceId": requestedServiceId,
      "service": service?.toJson(),
      "requestCreatedDate": requestCreatedDate,
      "duration": duration,
      "durationDays": durationDays,
      "creatorId": creatorId,
      "requestedUserId": requestedUserId,
      "offeredUserId": offeredUserId,
      "status": status,
      "rejectedByUserId": rejectedByUserId,
      "canceledByUserId": canceledByUserId,
      "tokens": tokens,
      'reviewedOfferUser': reviewedOfferUser,
      "reviewedRequestedUser": reviewedRequestedUser,
      "userInfoOffer": userInfoOffer,
      "userInfoRequest": userInfoRequest,
      "startedRequestedUser": startedRequestedUser,
      "needStartConfirmation": needStartConfirmation,
      "startedOfferUser": startedOfferUser,
      "version": version,
      "offeredUserLastSeenVersion": offeredUserLastSeenVersion,
      "requestedUserLastSeenVersion": requestedUserLastSeenVersion,
      "type": type,
      "price": price,
      "paymentTypes": paymentTypes,
      "currency": currency
    };
  }

  String? get getId => id;
  set setId(final id) => this.id = id;

  String? get getRequestedServiceId => this.requestedServiceId;
  set setRequestedServiceId(requestedServiceId) =>
      this.requestedServiceId = requestedServiceId;

  Service? get getService => this.service;
  set setService(Service service) => this.service = service;

  int? get getRequestCreatedDate => this.requestCreatedDate;
  set setRequestCreatedDate(requestCreatedDate) =>
      this.requestCreatedDate = requestCreatedDate;

  String? get getRequestedUserId => this.requestedUserId;
  set setRequestedUserId(requestedUserId) =>
      this.requestedUserId = requestedUserId;

  String? get getOfferedUserId => offeredUserId;
  set setOfferedUserId(offeredUserId) => this.offeredUserId = offeredUserId;

  String? get getStatus => this.status;
  set setStatus(status) => this.status = status;

  String? get getRejectedByUserId => this.rejectedByUserId;
  set setRejectedByUserId(rejectedByUserId) =>
      this.rejectedByUserId = rejectedByUserId;

  String? get getCanceledByUserId => this.canceledByUserId;
  set setCanceledByUserId(canceledByUserId) =>
      this.canceledByUserId = canceledByUserId;

  int? get getTokens => this.tokens;
  set setTokens(tokens) => this.tokens = tokens;

  int? get getDuration => this.duration;
  set setDuration(duration) => this.duration = duration;

  int? get getDurationDays => this.durationDays;
  set setDurationDays(durationDays) => this.durationDays = durationDays;

  String? get getCreatorId => this.creatorId;
  set setCreatorId(creatorId) => this.creatorId = creatorId;

  bool? get getReviewedOfferUser => this.reviewedOfferUser;
  void setReviewedOfferUser(value) {
    this.reviewedOfferUser = value;
  }

  bool? get getReviewedRequestedUser => this.reviewedRequestedUser;
  void setReviewedRequestedUser(value) {
    this.reviewedRequestedUser = value;
  }

  UserInfo? get getUserInfoOffer => this.userInfoOffer;

  set setUserInfoOffer(UserInfo userInfoOffer) =>
      this.userInfoOffer = userInfoOffer;

  UserInfo? get getUserInfoRequest => this.userInfoRequest;

  set setUserInfoRequest(UserInfo userInfoRequest) =>
      this.userInfoRequest = userInfoRequest;

  int? get getVersion => this.version;
  set setVersion(version) => this.version = version;

  int? get getOfferedUserLastSeenVersion => this.offeredUserLastSeenVersion;
  set setOfferedUserLastSeenVersion(offeredUserLastSeenVersion) =>
      this.offeredUserLastSeenVersion = offeredUserLastSeenVersion;

  int? get getRequestedUserLastSeenVersion => this.requestedUserLastSeenVersion;
  set setRequestedUserLastSeenVersion(requestedUserLastSeenVersion) =>
      this.requestedUserLastSeenVersion = requestedUserLastSeenVersion;

  bool? get getNeedStartConfirmation => this.needStartConfirmation;
  set setNeedStartConfirmation(bool? needStartConfirmation) =>
      this.needStartConfirmation = needStartConfirmation;

  bool? get getStartedOfferUser => this.startedOfferUser;
  set setStartedOfferUser(startedOfferUser) =>
      this.startedOfferUser = startedOfferUser;

  bool? get getStartedRequestedUser => this.startedRequestedUser;
  set setStartedRequestedUser(startedRequestedUser) =>
      this.startedRequestedUser = startedRequestedUser;

  String? get getType => this.type;
  set setType(String type) => this.type = type;

  double get getPrice => this.price!;
  set setPrice(price) => this.price = price;

  get getPaymentTypes => this.paymentTypes;
  set setPaymentTypes(List<String> paymentTypes) =>
      this.paymentTypes = paymentTypes;

  String? get getCurrency => this.currency;
  set setCurrency(String? currency) => this.currency = currency;
}

enum TypesOfPayments {
  CASH,
  DIRECT_BANK_TRANSFER,
}
