import 'package:dio/dio.dart';
import 'models/user.dart';

void getUsers() async {
  String url =
      'https://console.firebase.google.com/u/2/project/chat-app-92984/database/chat-app-92984-default-rtdb/data/~2F';

  try {
    var response = await Dio().get(url);
  } catch (error) {
    print(error);
  }
}
