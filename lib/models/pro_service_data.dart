class PROServiceData {
  PROServiceData({
    this.proServices,
    this.proAvailableCities,
    this.minHourPrice,
    this.maxHourPrice,
    this.galleryImageIds,
    this.currency,
  });
  List<String>? proServices;
  List<String>? proAvailableCities;
  double? minHourPrice;
  double? maxHourPrice;
  List<String>? galleryImageIds = [];
  String? currency;

  factory PROServiceData.fromJson(Map<String, dynamic> json) {
    List<String> imageIds = [];
    List<String> proServ = [];
    List<String> availableCities = [];

    if (json['galleryImageIds'] != null) {
      json['galleryImageIds'].forEach((value) {
        imageIds.add(value);
      });
    }

    if (json['proServices'] != null) {
      json['proServices'].forEach((value) {
        proServ.add(value);
      });
    }

    if (json['proAvailableCities'] != null) {
      json['proAvailableCities'].forEach((value) {
        availableCities.add(value);
      });
    }

    return PROServiceData(
        proServices: proServ,
        proAvailableCities: availableCities,
        minHourPrice: json['minHourPrice'],
        maxHourPrice: json['maxHourPrice'],
        galleryImageIds: imageIds,
        currency: json['currency']);
  }

  Map<String, dynamic> toJson() {
    return {
      'proServices': proServices,
      'proAvailableCities': proAvailableCities,
      'minHourPrice': minHourPrice,
      'maxHourPrice': maxHourPrice,
      'galleryImageIds': galleryImageIds,
      'currency': currency,
    };
  }
}
