class UnreadedMessage {
  UnreadedMessage({this.chatId, this.count});
  String? chatId;
  int? count;

  String? get getChatId => chatId;
  int? get getCount => count;

  @override
  toString() {
    return "$getChatId: $getCount";
  }
}
