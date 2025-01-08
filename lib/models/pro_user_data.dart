import 'package:lear_bloc/models/enquiry.dart';
import 'package:lear_bloc/models/local_verification_data.dart';
import 'package:lear_bloc/models/service.dart';

class PROUserData {
  PROUserData({
    this.isActive,
    this.subscriptionStartDate,
    this.subscriptionEndDate,
    this.service,
    this.subscriptionType,
    this.enquiries,
    this.purchaseDetails,
  });
  bool? isActive;
  int? subscriptionStartDate;
  int? subscriptionEndDate;
  Service? service;
  String? subscriptionType;
  List<Enquiry>? enquiries = [];
  List<LocalVerificationData>? purchaseDetails = [];

  factory PROUserData.fromJson(Map<String, dynamic> json) {
    Service? _service;
    List<Enquiry> _enquries = [];
    List<LocalVerificationData> _purchaseDetails = [];

    if (json['service'] != null) {
      _service = Service.fromJson(json['service']);
    }

    if (json['enquiries'] != null) {
      json['enquiries'].forEach((value) {
        _enquries.add(Enquiry.fromJson(value));
      });
    }

    if (json['purchaseDetails'] != null) {
      json['purchaseDetails'].forEach((value) {
        _purchaseDetails.add(LocalVerificationData.fromJson(value));
      });
    }

    return PROUserData(
      isActive: json['isActive'],
      subscriptionStartDate: json['subscriptionStartDate'],
      subscriptionEndDate: json['subscriptionEndDate'],
      service: _service,
      enquiries: _enquries,
      purchaseDetails: _purchaseDetails,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isActive': isActive,
      'subscriptionStartDate': subscriptionStartDate,
      'subscriptionEndDate': subscriptionEndDate,
      "service": service,
      'enquiries': enquiries,
      'purchaseDetails': purchaseDetails,
    };
  }
}
