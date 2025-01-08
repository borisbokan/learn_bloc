class PushNotificationMessage {
  PushNotificationMessage({this.title, this.body});

  String? title;
  String? body;

  String? getTitle() {
    return title;
  }

  void setTitle(String title) {
    title = title;
  }

  String? getBody() {
    return body;
  }

  void setBody(String? body) {
    body = body;
  }

  factory PushNotificationMessage.fromJson(Map<String, String> json) {
    return PushNotificationMessage(
      title: json['title'],
      body: json['body'],
    );
  }

  //To Json
  toJson() {
    return {
      'title': title,
      'body': body,
    };
  }
}
