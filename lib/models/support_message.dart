class SupportMessage {
  SupportMessage({this.userId, this.messageType, this.message});

  String? message;
  String? messageType;
  String? userId;

  factory SupportMessage.fromJson(dynamic json) {
    return SupportMessage(
        userId: json?['userId'],
        messageType: json['messageType'],
        message: json['message']);
  }

  Map<String, dynamic> toJson(SupportMessage message) {
    return {
      'userId': message.userId,
      'messageType': message.messageType,
      'message': message.message,
    };
  }
}
