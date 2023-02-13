// This file will condense all firebase work in one file

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/user.dart';
import '../models/chat.dart';

class NetworkService {
  // Always require currentUser for security
  NetworkService({required this.currentUser}) : assert(currentUser != null);
  // This will use uid which is a String? type
  String? currentUser;

  final FirebaseFirestore _firestoreDatabase = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

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
    _firebaseAuth.authStateChanges().listen((User? user) {
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
