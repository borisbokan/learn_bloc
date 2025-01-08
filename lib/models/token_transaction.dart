class TokenTransaction {
  String? userName;
  String? userId;
  String? jobType;
  String? jobSubtype;
  int? tokens;
  int? createdDate;

  TokenTransaction(
      {this.userName,
      this.userId,
      this.jobType,
      this.jobSubtype,
      this.tokens,
      this.createdDate});

  factory TokenTransaction.fromJson(Map<String, dynamic>? json) {
    return TokenTransaction(
      userName: json!['userName'],
      userId: json['userId'],
      jobSubtype: json['jobSubtype'],
      jobType: json['jobType'],
      tokens: json['tokens'],
      createdDate: json['createdDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'userId': userId,
      'jobSubtype': jobSubtype,
      'jobType': jobType,
      'tokens': tokens,
      'createdDate': createdDate,
    };
  }

  String? getUserName() {
    return userName;
  }

  void setUserName(String? userName) {
    userName = userName;
  }

  String? getUserId() {
    return userId;
  }

  void setUserId(String? userId) {
    userId = userId;
  }

  String? getJobType() {
    return jobType;
  }

  void setJobType(String? jobType) {
    jobType = jobType;
  }

  String? getJobSubtype() {
    return jobSubtype;
  }

  void setJobSubtype(String? jobSubtype) {
    this.jobSubtype = jobSubtype;
  }

  int? getTokens() {
    return tokens;
  }

  void setTokens(int? tokens) {
    tokens = tokens;
  }

  int? getCreatedDate() {
    return createdDate;
  }

  void setCreatedDate(int? createdDate) {
    createdDate = createdDate;
  }
}
