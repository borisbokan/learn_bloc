class AdInfo {
  String? id;
  int? consecutiveDaysWatched = 0;
  int? lastAdWatchedDate;
  int? lastAdFullWatchedDate;
  int? dailyPoints = 0;
  bool? availableToWatch = true;
  int? daysInMonthWatched = 0;
  int? requiredDaysInMonth = 0;
  int? requiredDailyPoints = 0;
  AdInfo(
      {this.id,
      this.consecutiveDaysWatched,
      this.lastAdWatchedDate,
      this.lastAdFullWatchedDate,
      this.dailyPoints,
      this.availableToWatch,
      this.daysInMonthWatched,
      this.requiredDaysInMonth,
      this.requiredDailyPoints});

  factory AdInfo.fromJson(Map<String, dynamic> json) {
    return AdInfo(
        id: json['id'],
        daysInMonthWatched: json['daysInMonthWatched'],
        consecutiveDaysWatched: json['consecutiveDaysWatched'],
        lastAdWatchedDate: json['lastAdWatchedDate'],
        lastAdFullWatchedDate: json['lastAdFullWatchedDate'],
        dailyPoints: json['dailyPoints'],
        availableToWatch: json['availableToWatch'],
        requiredDaysInMonth: json['requiredDaysInMonth'],
        requiredDailyPoints: json['requiredDailyPoints']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "consecutiveDaysWatched": consecutiveDaysWatched,
      "lastAdWatchedDate": lastAdWatchedDate,
      "lastAdFullWatchedDate": lastAdFullWatchedDate,
      "dailyPoints": dailyPoints,
      "availableToWatch": availableToWatch,
      "daysInMonthWatched": this.daysInMonthWatched,
      "requiredDaysInMonth": this.requiredDaysInMonth,
      "requiredDailyPoints": this.requiredDailyPoints
    };
  }

  void setRequiredDailyPoints(int requiredDailyPoints) {
    this.requiredDailyPoints = requiredDailyPoints;
  }

  int getRequiredDailyPoints() {
    return requiredDailyPoints!;
  }

  int getRequiredDaysInMonth() {
    return requiredDaysInMonth!;
  }

  void setRequiredDaysInMonth(int requiredDaysInMonth) {
    this.requiredDaysInMonth = requiredDaysInMonth;
  }

  int getDaysInMonthWatched() {
    return daysInMonthWatched!;
  }

  void setDaysInMonthWatched(int daysInMonthWatched) {
    this.daysInMonthWatched = daysInMonthWatched;
  }

  bool isAvailableToWatch() {
    return availableToWatch!;
  }

  void setAvailableToWatch(bool availableToWatch) {
    this.availableToWatch = availableToWatch;
  }

  int getLastAdFullWatchedDate() {
    return lastAdFullWatchedDate!;
  }

  void setLastAdFullWatchedDate(int lastAdFullWatchedDate) {
    this.lastAdFullWatchedDate = lastAdFullWatchedDate;
  }

  String? getId() {
    return id;
  }

  void setId(String id) {
    id = id;
  }

  int? getConsecutiveDaysWatched() {
    return consecutiveDaysWatched;
  }

  void setConsecutiveDaysWatched(int consecutiveDaysWatched) {
    this.consecutiveDaysWatched = consecutiveDaysWatched;
  }

  int? getLastAdWatchedDate() {
    return lastAdWatchedDate;
  }

  void setLastAdWatchedDate(int lastAdWatchedDate) {
    this.lastAdWatchedDate = lastAdWatchedDate;
  }

  int? getDailyPoints() {
    return dailyPoints;
  }

  void setDailyPoints(int dailyPoints) {
    this.dailyPoints = dailyPoints;
  }
}
