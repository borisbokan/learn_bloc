class DateConvertor {
  DateConvertor(this.millisecond) {
    _milliseconToDate();
  }
  int? millisecond;

  DateTime? _date;
  int? year;
  int? month;
  int? day;
  int? hours;
  int? minutes;
  int? seconds;

  _milliseconToDate() {
    if (millisecond != null) {
      _date = DateTime.fromMillisecondsSinceEpoch(millisecond!);
      year = _date!.year;
      month = _date!.month;
      day = _date!.day;
      hours = _date!.hour;
      minutes = _date!.minute;
      seconds = _date!.second;
    } else {
      _date = DateTime(0, 0, 0, 0, 0);
    }
  }

  DateTime? get getDateTime => _date;
  int? get getYear => year;
  int? get getMonth => month;
  int? get getDay => day;
  int? get getSeconds => seconds;
  int? get getHours => hours;
  int? get getMinutes => minutes;
}
