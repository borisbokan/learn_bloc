import 'package:lear_bloc/models/address.dart';
import 'package:lear_bloc/models/date_time_slot.dart';
import 'package:lear_bloc/models/pro_service_data.dart';
import 'package:lear_bloc/models/requested_service_data.dart';
import 'package:lear_bloc/models/user_info_model.dart';

class Service {
  Service(
      {this.id,
      this.jobType, //Title
      this.iconJobTypePath,
      this.jobSubtype, //Subtitle
      this.iconJobSubTypePath,
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
      this.serviceNeededDate,
      this.requestedServiceData,
      this.version,
      this.disabled,
      this.proServiceData,
      this.minHourPrice,
      this.maxHourPrice});

  String? id;
  String? jobType;
  String? iconJobTypePath;
  String? jobSubtype;
  String? iconJobSubTypePath;
  bool? needTools;
  String? participant; //ServiceParticipantEnum participant; //Single, Multiple
  bool? onDemand;
  List<DateTimeSlot>? availabilityCalendar;
  String? userId;
  String? userName;
  UserInfo? userInfo;
  int? created;
  int? duration;
  Address? address;
  String? description;
  bool? oneTime;
  DateTimeSlot? serviceNeededDate;
  RequestedServiceData? requestedServiceData;
  int? version;
  bool? disabled = false;
  double? minHourPrice;
  double? maxHourPrice;
  PROServiceData? proServiceData;

  String? get getId => id;
  set setId(String id) => id = id;

  factory Service.fromJson(dynamic json) {
    Address? address;
    List<DateTimeSlot>? dateTimeAval = [];
    UserInfo? userInfo;
    DateTimeSlot? serviceNeededDate;
    PROServiceData? proSerData;

    if (json['availabilityCalendar'] != null) {
      json['availabilityCalendar'].forEach((value) {
        dateTimeAval.add(DateTimeSlot.fromJson(value));
      });
    }

    if (json['address'] != null) {
      address = Address.fromJson(json['address']);
    }

    if (json['serviceNeededDate'] != null) {
      serviceNeededDate = DateTimeSlot.fromJson(json['serviceNeededDate']);
    }

    if (json['userInfo'] != null) {
      userInfo = UserInfo.fromJson(json['userInfo']);
    }

    if (json['proServiceData'] != null) {
      proSerData = PROServiceData.fromJson(json['proServiceData']);
    }

    return Service(
      id: json['id'],
      jobType: json['jobType'],
      iconJobTypePath: "assets/job_types/${json['jobType']}.png",
      jobSubtype: json['jobSubtype'],
      iconJobSubTypePath: "assets/job_types/${json['jobSubtype']}.png",
      needTools: json['needTools'],
      participant: json['participant'],
      onDemand: json['onDemand'],
      description: json['description'],
      availabilityCalendar: dateTimeAval,
      userId: json['userId'],
      userName: json['userName'],
      userInfo: userInfo,
      created: json['created'],
      serviceNeededDate: serviceNeededDate,
      duration: json['duration'],
      address: address,
      version: json['version'],
      minHourPrice: json['minHourPrice'],
      maxHourPrice: json['maxHourPrice'],
      proServiceData: proSerData,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "jobType": jobType,
      "jobSubtype": jobSubtype,
      "needTools": needTools,
      "participant": participant,
      "onDemand": onDemand ?? false,
      "description": description,
      "availabilityCalendar": availabilityCalendar,
      "userId": userId,
      "userName": userName,
      "userInfo": userInfo != null ? userInfo?.toJson() : null,
      "created": created,
      "serviceNeededDate":
          serviceNeededDate != null ? serviceNeededDate!.toJson() : null,
      "duration": duration,
      "address": address != null ? address!.toJson() : null,
      "version": version,
      "minHourPrice": minHourPrice,
      "maxHourPrice": maxHourPrice,
      "proServiceData": proServiceData
    };
  }
}
