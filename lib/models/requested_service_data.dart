class RequestedServiceData {
  RequestedServiceData({this.available, this.inInteraction});
  final bool? available;
  final bool? inInteraction;

  factory RequestedServiceData.fromJson(Map<String, bool>? json) {
    return RequestedServiceData(
      available: json!['available'],
      inInteraction: json['inInteraction'],
    );
  }
}
