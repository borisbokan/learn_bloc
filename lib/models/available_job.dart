class AvailableJob {
  ///@jobType - Main type of service
  ///@jobSubType - Is end service and belong to main service
  AvailableJob({this.jobType, this.jobSubtypes});

  ///@jobType - Main type of service
  String? jobType;

  ///@jobSubType - Is end service and belong to main service
  List<String>? jobSubtypes = [];

  factory AvailableJob.fromJson(Map<String, dynamic> json) {
    List<String> subTypes = [];
    if (json['jobSubtypes'] != null) {
      json['jobSubtypes'].forEach((value) {
        subTypes.add(value);
      });
    }

    return AvailableJob(
      jobType: json['jobType'],
      jobSubtypes: subTypes,
    );
  }
}
