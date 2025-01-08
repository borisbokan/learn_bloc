class ResetPasswordRequest {
  ResetPasswordRequest({this.password, this.token});

  String? token;
  String? password;

  String? get getToken => token;
  set setToken(String token) => token = token;
  String? get getPassword => password;
  set setPassword(password) => password = password;

  factory ResetPasswordRequest.fromJson(dynamic json) {
    return ResetPasswordRequest(
        password: json['password'], token: json['token']);
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'token': token,
    };
  }
}
