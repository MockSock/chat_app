import 'package:dio/dio.dart';
import 'dart:convert';

import 'models/chat.dart';

class NetWorkServices {
  String url =
      'https://console.firebase.google.com/u/2/project/chat-app-92984/database/chat-app-92984-default-rtdb/data/~2F';

  List<Chat> ChatsDecoder(String str) =>
      List<Chat>.from(json.decode(str).map((x) => Chat.fromJson(x)));

  Future<List<Chat>> ChatResponseHandler(Response response) async {
    List<Chat> Chats = ChatsDecoder(response.data);
    return Chats;
  }

  getChatsJson() async {
    try {
      Response response = await Dio().get(url);
      return ChatResponseHandler(response);
    } catch (error) {
      print(error);
    }
  }
}
