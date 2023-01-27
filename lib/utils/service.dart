// This file will condense all firebase work in one file

import 'package:firebase_auth/firebase_auth.dart';

class NetworkService {
  // Always require currentUser for security
  // NetworkService({});

  checkUserStatus() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        // Firebase auth has its own user parameters use those
      } else {
        return;
      }
    });
  }
}
