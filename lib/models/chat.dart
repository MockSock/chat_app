class Chat {
  Chat({
    required this.ChatId,
    required this.ChatName,
  });

  final int ChatId;
  final String ChatName;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        ChatId: json['ChatId'],
        ChatName: json['Chatname'],
      );
}
