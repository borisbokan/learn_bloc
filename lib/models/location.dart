class Location {
  Location({this.type, this.coordinates});

  String? type;
  List<double>? coordinates = [];

  String? get getCoordinates =>
      "${coordinates![0].toString()}, ${coordinates![1].toString()}";

  factory Location.fromJson(Map<String, dynamic>? json) {
    List<double> coordinates = [];

    if (json!['coordinates'] != null) {
      json['coordinates'].forEach((value) {
        coordinates.add(value);
      });
    }

    return Location(
      type: json['type'],
      coordinates: coordinates,
    );
  }

  Map<String, dynamic> toJson() {
    // Map<String, double> resCoordinates =
    //     this.coordinates.map((e) => e.toDouble());

    return {
      'type': type,
      'coordinates': coordinates,
    };
  }
}
