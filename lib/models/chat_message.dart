class ChatMessage {
  ChatMessage(
      {this.chatId,
      this.id,
      this.senderId,
      this.senderName,
      this.receiverId,
      this.receiverName,
      this.content,
      this.created,
      this.edited,
      this.deleted,
      this.delivered,
      this.seen});
  String? chatId;
  String? id;
  String? senderId;
  String? senderName;
  String? receiverId;
  String? receiverName;
  String? content;
  int? created = 0;
  bool? delivered = false;
  bool? seen = false;
  bool? edited = false;
  bool? deleted = false;
  String? get getChatId => chatId;
  set setChatId(String value) => chatId = value;
  String? get getId => id;
  set setId(String id) => id = id;
  String? get getSenderId => senderId;
  set setSenderId(senderId) => senderId = senderId;
  String? get getSenderName => senderName;
  set setSenderName(senderName) => senderName = senderName;
  String? get getReceiverId => receiverId;
  set setReceiverId(receiverId) => receiverId = receiverId;
  String? get getReceiverName => receiverName;
  set setReceiverName(receiverName) => receiverName = receiverName;
  String? get getContent => content;
  set setContent(content) => content = content;
  int? get getCreated => created;
  set setCreated(created) => created = created;
  bool? get getDelivered => delivered;
  set setDelivered(delivered) => delivered = delivered;
  bool? get getSeen => seen;
  set setSeen(seen) => seen = seen;
  set setEdited(edited) => edited = edited;
  bool? get isEdited => edited;
  set setDeleted(deleted) => deleted = deleted;

  factory ChatMessage.fromJson(Map<String, dynamic>? json) {
    return ChatMessage(
      chatId: json?['chatId'],
      id: json?['id'],
      senderId: json?['senderId'],
      senderName: json?['senderName'],
      receiverId: json?['receiverId'],
      receiverName: json?['receiverName'],
      content: json?['content'],
      created: json?['created'],
      delivered: json?['delivered'],
      seen: json?['seen'],
      edited: json?['edited'],
      deleted: json?['deleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "chatId": chatId,
      "id": id,
      "senderId": senderId,
      "senderName": senderName,
      "receiverId": receiverId,
      "receiverName": receiverName,
      "content": content,
      "created": created,
      "delivered": delivered,
      "seen": seen,
      "edited": edited,
      "deleted": deleted,
    };
  }

  Map<String, dynamic> toJsonNoId() {
    return {
      "chatId": chatId,
      "id": id,
      "senderId": senderId,
      "senderName": senderName,
      "receiverId": receiverId,
      "receiverName": receiverName,
      "content": content,
      "created": created,
      "delivered": delivered,
      "seen": seen,
      "edited": edited,
      "deleted": deleted,
    };
  }
}
