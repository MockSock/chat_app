import 'package:dio/dio.dart';
import 'dart:convert';

import 'models/chat.dart';

class NetWorkServices {
  static const String _url =
      'https://console.firebase.google.com/u/2/project/chat-app-92984/database/chat-app-92984-default-rtdb/data/~2F';

  List<Chat> _chatsDecoder(String str) =>
      List<Chat>.from(json.decode(str).map((x) => Chat.fromJson(x)));

  Future<List<Chat>> _chatResponseHandler(Response response) async {
    List<Chat> chats = _chatsDecoder(response.data);
    return chats;
  }

  getChatsJson() async {
    try {
      Response response = await Dio().get(_url);
      return _chatResponseHandler(response);
    } catch (error) {
      print(error);
    }
  }
}
