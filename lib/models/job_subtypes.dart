class JobTypes {
  JobTypes({this.jobType, this.jobSubtypes});

  String? jobType;
  List<String>? jobSubtypes = [];

  factory JobTypes.fromJson(dynamic json) {
    List<String>? subTypes = [];

    if (json!['jobSubtype'] != null) {
      json!['jobSubtype'].forEach((value) {
        subTypes.add(value);
      });
    }

    return JobTypes(
      jobType: json['jobType'],
      jobSubtypes: subTypes,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jobType': jobType,
      'jobSubtypes': jobSubtypes,
    };
  }
}
