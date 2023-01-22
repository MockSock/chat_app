class Chat {
  Chat({
    required this.chatId,
    required this.chatName,
  });

  final int chatId;
  final String chatName;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        chatId: json['chatId'],
        chatName: json['chatname'],
      );
}
