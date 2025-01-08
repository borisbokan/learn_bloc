class FiltersRequestsModel {
  FiltersRequestsModel(
      {this.name,
      this.durationMin,
      this.durationMax,
      this.distanceMin,
      this.distanceMax,
      this.serviceMainType,
      this.serviceSubType,
      this.needTools});

  String? name;
  int? durationMin;
  int? durationMax;
  double? distanceMin;
  double? distanceMax;
  String? serviceMainType;
  String? serviceSubType;
  bool? needTools;

  String? get getName => name;
  set setName(String name) => name = name;
  int? get getDurationMin => durationMin;
  set setDurationMin(int durationMin) => durationMin = durationMin;
  int? get getDurationMax => durationMax;
  set setDurationMax(int durationMax) => durationMax = durationMax;
  double? get getDistanceMin => distanceMin;
  set setDistanceMin(double distanceMin) => distanceMin = distanceMin;
  double? get getDistanceMax => distanceMax;
  set setDistanceMax(double distanceMax) {
    distanceMax = distanceMax;
  }

  String? get getServiceMainType => serviceMainType;
  set setServiceMainType(String serviceMainType) =>
      serviceMainType = serviceMainType;
  String? get getServiceSubType => serviceSubType;
  set setServiceSubType(String serviceSubType) =>
      serviceSubType = serviceSubType;
  bool? get getNeedTools => needTools;
  set setNeedTools(bool needTools) => needTools = needTools;
}
