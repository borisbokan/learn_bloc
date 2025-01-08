import 'dart:ffi';

class ReportedContentItem {
  static final String OFFER_DETAILS = "OFFER_DETAILS";
  static final String REQUEST_DETAILS = "REQUEST_DETAILS";
  static final String DEALS_DETAILS = "DEALS_DETAILS";
  static final String CHAT_MESSAGE = "CHAT_MESSAGE";
  ReportedContentItem({
    this.id,
    this.userReporterId,
    this.userReportedId,
    this.type,
    this.description,
    this.selected = false,
  });
  String? id;
  String? userReporterId;
  String? userReportedId;
  String? type;
  String? description;
  bool? selected;

  factory ReportedContentItem.fromJson(Map<String, dynamic> json) {
    return ReportedContentItem(
      id: json['id'],
      userReportedId: json['userReporterId'],
      userReporterId: json['userReportedId'],
      type: json['type'],
      description: json['description'],
      selected: json['selected'],
    );
  }

  static Map<String, dynamic>? toMap(ReportedContentItem? item) {
    Map<String, dynamic>? toReturn = {};

    toReturn['id'] = item?.id;
    toReturn['userReporterId'] = item?.userReporterId;
    toReturn['userReportedId'] = item?.userReportedId;
    toReturn['type'] = item?.type;
    toReturn['description'] = item?.description;
    toReturn['selected'] = item?.selected;
    return toReturn;
  }
}
