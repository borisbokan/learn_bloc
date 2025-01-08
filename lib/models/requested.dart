import 'package:lear_bloc/models/address.dart';
import 'package:lear_bloc/models/date_time_slot.dart';
import 'package:lear_bloc/models/requested_service_data.dart';
import 'package:lear_bloc/models/user_info_model.dart';

class Requested {
  Requested({
    this.id,
    this.jobType,
    this.jobSubtype,
    this.needTools,
    this.participant,
    this.onDemand,
    this.availabilityCalendar,
    this.userId,
    this.userName,
    this.userInfo,
    this.created,
    this.duration,
    this.address,
    this.description,
    this.oneTime,
    this.requestedServiceData,
  });
  String? id;
  String? jobType;
  String? jobSubtype;
  bool? needTools;
  String? participant;
  bool? onDemand;
  DateTimeSlot? availabilityCalendar;
  String? userId;
  String? userName;
  UserInfo? userInfo;
  String? created;
  int? duration;
  Address? address;
  String? description;
  bool? oneTime;
  RequestedServiceData? requestedServiceData;

  factory Requested.fromJson(dynamic json) {
    Address? address;
    RequestedServiceData? requestedServiceData;
    DateTimeSlot? dateTimeSlot;
    UserInfo? userInfo;

    if (json['address'] != null) {
      address = Address.fromJson(json['address']);
    }

    if (json['requestedServiceData'] != null) {
      requestedServiceData =
          RequestedServiceData.fromJson(json['requestedServiceData']);
    }

    if (json['availabilityCalendar'] != null) {
      dateTimeSlot = DateTimeSlot.fromJson(json['availabilityCalendar']);
    }

    if (json['userInfo'] != null) {
      userInfo = UserInfo.fromJson(json['userInfo']);
    }

    return Requested(
      id: json['id'],
      jobType: json['jobType'],
      jobSubtype: json['jobSubtype'],
      needTools: json['needTools'],
      participant: json['participant'],
      onDemand: json['onDemand'],
      availabilityCalendar: dateTimeSlot,
      userId: json['userId'],
      userName: json['userName'],
      userInfo: userInfo,
      created: json['created'],
      duration: json['duration'],
      address: address,
      description: json['description'],
      oneTime: json['oneTime'],
      requestedServiceData: requestedServiceData,
    );
  }
}
