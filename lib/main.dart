import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'widgets/chat_list.dart';
import 'models/chat.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomePage(title: 'Flutter Chat App'),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final DatabaseReference _reference = _database.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          // need to check for current Chat and add
          // button for new chats along with search buttons
          ChatList(),
        ],
      ),
    );
  }
}
