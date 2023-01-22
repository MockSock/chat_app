import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.chatId,
  });

  final String chatId;
  @override
  Widget build(BuildContext context) {
    return Text(chatId);
  }
}
