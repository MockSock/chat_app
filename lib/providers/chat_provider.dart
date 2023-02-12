import 'package:flutter/material.dart';

import '../models/chat.dart';

class ActiveChats extends ChangeNotifier {
  final List<Chat> _currentChats = [
    // dummy data
    Chat(
      chatId: 10,
      chatName: 'Party Hauss',
    ),
    Chat(
      chatId: 34,
      chatName: 'Dev Meetings',
    ),
    Chat(
      chatId: 87,
      chatName: 'Secret Dev Meetings',
    ),
  ];
}
