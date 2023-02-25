import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'widgets/chat_list.dart';

// Let's make app with just firebase, then work in provider

/*
ToDo List:
Create Login and Sign up 
Create Splash Screen
Create chat List screen 
Create a Current User screen  
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('I work');
  }
}
