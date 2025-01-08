import 'package:lear_bloc/models/chat_message.dart';

class Chat {
  Chat({
    this.id,
    this.messages,
    this.user1Id,
    this.user1Name,
    this.user2Id,
    this.user2Name,
    this.lastChatMessage = 0,
    this.unreadMessages = 0,
    this.type,
  }) {
    _couuntdownUnreadedMsg(currentUser);
  }

  List<ChatMessage>? messages = [];
  String? id;
  String? user1Id;
  String? user1Name;
  String? user2Id;
  String? user2Name;
  int? lastChatMessage = 0;
  String? currentUser;
  int unreadMessages = 0;
  int? _countUnreadedMessages = 0;
  String? type;

  set setCountUnreadedMsg(int count) {
    _countUnreadedMessages = count;
  }

  int? getCountUnreadedMessages() {
    return _countUnreadedMessages;
  }

  int? get countUnreadedMessages => _countUnreadedMessages ?? 0;
  set countUnreadedMessages(int? value) => _countUnreadedMessages = value;
  String? get getId => id;
  set setId(String id) => id = id;
  set setMessages(List<ChatMessage> messages) => messages = messages;
  List<ChatMessage>? get getMessages => messages;
  String? get getUser1Id => user1Id;
  set setUser1Id(user1Id) => user1Id = user1Id;
  String? get getUser1Name => user1Name;
  set setUser1Name(user1Name) => user1Name = user1Name;
  String? get getUser2Id => user2Id;
  set setUser2Id(user2Id) => user2Id = user2Id;
  String? get getUser2Name => user2Name;
  set setUser2Name(user2Name) => user2Name = user2Name;
  int? get getLastChatMessage => lastChatMessage;
  set setLastChatMessage(lastChatMessage) => lastChatMessage = lastChatMessage;
  int? get getUnreadedMessages => unreadMessages;
  set setUnreadedMessage(int value) {
    unreadMessages = value;
  }

  String get getType => this.type!;
  set setType(String type) {
    this.type = type;
  }

  factory Chat.fromJson(Map<String, dynamic> json) {
    List<ChatMessage> messages = [];
    if (json['messages'] != null) {
      json['messages'].forEach((value) {
        messages.add(ChatMessage.fromJson(value));
      });
    }
    return Chat(
        id: json['id'],
        messages: messages,
        user1Id: json['user1Id'],
        user1Name: json['user1Name'],
        user2Id: json['user2Id'],
        user2Name: json['user2Name'],
        lastChatMessage: json['lastChatMessage'],
        unreadMessages: json['unreadMessages'],
        type: json['type']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'messages': messages,
      'user1Id': user1Id,
      'user1Name': user1Name,
      'user2Id': user2Id,
      'user2Name': user2Name,
      'lastChatMessage': lastChatMessage,
      'unreadMessages': unreadMessages,
      'type': type,
    };
  }

  _couuntdownUnreadedMsg(String? currentUserId) {
    getMessages?.forEach((element) {
      if (element.seen == false && user2Id == currentUserId) {
        _countUnreadedMessages = _countUnreadedMessages! + 1;
      }
    });
    print(_countUnreadedMessages);
  }
}
