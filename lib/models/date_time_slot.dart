class DateTimeSlot {
  DateTimeSlot({this.startDate, this.endDate});

  int? startDate;
  int? endDate;
  int? get getStartDate => this.startDate;
  set setStartDate(startDate) => this.startDate = startDate;
  int? get getEndDate => this.endDate;
  set setEndDate(int endDate) => this.endDate = endDate;

  factory DateTimeSlot.fromJson(dynamic json) {
    return DateTimeSlot(
      startDate: json['startTime'],
      endDate: json['endTime'],
    );
  }

  Map toJson() {
    return {
      'startTime': startDate,
      'endTime': endDate,
    };
  }
}
