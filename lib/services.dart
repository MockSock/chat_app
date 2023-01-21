import 'package:dio/dio.dart';
import 'dart:convert';

import 'models/user.dart';

class NetWorkServices {
  String url =
      'https://console.firebase.google.com/u/2/project/chat-app-92984/database/chat-app-92984-default-rtdb/data/~2F';

  List<User> usersDecoder(String str) =>
      List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

  Future<List<User>> userResponseHandler(Response response) async {
    List<User> users = usersDecoder(response.data);
    return users;
  }

  getUsersJson() async {
    try {
      Response response = await Dio().get(url);
      return userResponseHandler(response);
    } catch (error) {
      print(error);
    }
  }
}
