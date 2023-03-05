import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';

enum Status {
  // This allows us to cycle through all the
  // different types of authentication situations
  uninitialized,
  authenticated,
  authenticating,
  authError,
  authCancelled,
}

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final SharedPreferences sharedPreferences;

  Status _status = Status.uninitialized;

  late AppUser appUser;

  Status get status => _status;

  AuthProvider({
    required this.firebaseAuth,
    required this.firebaseFirestore,
    required this.sharedPreferences,
  });

  String? getFirebaseUserId() {
    if (appUser.userId == ' ') {
      // has to be a better way to handle errors
      return ErrorDescription('No current user').toString();
    } else {
      return sharedPreferences.getString(appUser.userId.toString());
    }
  }

  Future<bool> isUserLoggedIn() async {
    if (firebaseAuth.currentUser != null) {
      // make a better check for data in the future
      return true;
    } else {
      return false;
    }
  }
}
