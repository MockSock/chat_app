// This file will condense all firebase work in one file

import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';

class NetworkService {
  // Always require currentUser for security
  NetworkService({required this.currentUser});

  AppUser currentUser;

  checkUserStatus() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        // find way to repackage it and pass it along
        currentUser = user;
        return currentUser;
      } else {
        return;
      }
    });
  }
}
