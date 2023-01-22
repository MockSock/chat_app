import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({
    super.key,
    required this.chatId,
    required this.chatName,
  });

  final String chatId;
  final String chatName;

  @override
  Widget build(BuildContext context) {
    final chatAppBar = AppBar(
      title: const Text('Chat name will be here'),
      actions: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        )
      ],
    );
    return Scaffold(
      appBar: chatAppBar,
      body: Text(chatId),
    );
  }
}
