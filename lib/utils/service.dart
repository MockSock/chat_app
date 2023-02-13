// This file will condense all firebase work in one file

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';
import '../models/chat.dart';

class NetworkService {
  // Always require currentUser for security
  NetworkService({required this.currentUser});
  AppUser currentUser;

  // CRUD operations
  Future<void> createChat() async {
    return;
  }

  Future<void> deleteChat() async {
    return;
  }

  Stream<List<Chat>> chatStream() {
    return;
  }

  Stream<AppUser> userStream() {
    return;
  }

  Future<void> checkUserStatus() async {
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
