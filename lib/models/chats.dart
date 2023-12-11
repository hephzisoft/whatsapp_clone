import 'user.dart';

class Chats {
  final DateTime lastMessage;
  final Message message;
  final bool isOnline;
  final DateTime lastOnline;

  Chats(
      {required this.isOnline,
      required this.lastMessage,
      required this.lastOnline,
      required this.message});
}

class Message {
  final Object message;
  final DateTime timeSent;
  final User sender;
  final User receiver;

  Message({
    required this.message,
    required this.timeSent,
    required this.sender,
    required this.receiver,
  });
}
