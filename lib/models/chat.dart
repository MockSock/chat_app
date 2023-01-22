// ignore_for_file: file_names

class Chat {
  Chat({
    required this.chatId,
    required this.chatName,
    required this.lastUpdated,
  });

  final int chatId;
  final String chatName;
  final DateTime lastUpdated;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        chatId: json['chatId'],
        chatName: json['chatname'],
        lastUpdated: json['lastUpdated'],
      );
}
