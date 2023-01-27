// This file will condense all firebase work in one file

import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';

class NetworkService {
  // Always require currentUser for security
  NetworkService({required this.currentUser});

  AppUser currentUser;

  Future checkUserStatus() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        // A for loop would let you iterate through
        // the values and plant them as you wish
        for (final userData in user.providerData) {
          currentUser.userName = userData.displayName.toString();
          currentUser.userId = userData.uid;
        }
      } else {
        return;
      }
    });
  }
}
