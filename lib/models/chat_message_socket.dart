class ChatMessageSocket {
  ChatMessageSocket();
  Data? data;

  set setData(Data data) => data = data;

  factory ChatMessageSocket.fromJson(Map<String, dynamic> json) {
    print("Test dolazni json data: ${json['data']}");

    Data? dataChatMessage = Data.fromJson(json['data']);

    ChatMessageSocket? newCh = ChatMessageSocket();
    newCh.data = dataChatMessage;

    return newCh;
  }
}

class Data {
  Data({this.chatId, this.message});
  final String? chatId;
  final Message? message;

  String? get getChatId => chatId;
  set setChatId(chatId) => chatId = chatId;
  Message? get getMessage => message;
  set setMessage(message) => message = message;

  factory Data.fromJson(Map<String, dynamic> json) {
    // Message? message = Message.fromJson(json['message']);
    return Data(
      chatId: json['chatId'],
      message: Message.fromJson(json['message']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "chatId": chatId,
      "message": message,
    };
  }
}

class Message {
  Message({
    this.id,
    this.senderId,
    this.senderName,
    this.receiverId,
    this.receiverName,
    this.content,
    this.created,
    this.delivered,
    this.seen = false,
    this.edited,
    this.deleted,
  });
  String? id;
  String? senderId;
  String? senderName;
  String? receiverId;
  String? receiverName;
  String? content;
  int? created;
  bool? delivered;
  bool? seen;
  bool? edited;
  bool? deleted;
  String? get getId => id;
  set setId(id) => id;
  String? get getSenederId => senderId;
  set setSenderId(senederId) => senderId = senederId;
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
  bool? get getEdited => edited;
  set setEdited(edited) => edited = edited;
  bool? get getDeleted => deleted;
  set setDeleted(deleted) => deleted = deleted;

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      senderId: json['senderId'],
      senderName: json['senderName'],
      receiverId: json['receiverId'],
      receiverName: json['receiverName'],
      content: json['content'],
      created: json['created'],
      delivered: json['delivered'],
      seen: json['seen'],
      edited: json['edited'],
      deleted: json['deleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'senderId': senderId,
      'senderName': senderName,
      'receiverId': receiverId,
      'receiverName': receiverName,
      'content': content,
      'created': created,
      'delivered': delivered,
      'seen': seen,
      'edited': edited,
      'deleted': deleted,
    };
  }
}
