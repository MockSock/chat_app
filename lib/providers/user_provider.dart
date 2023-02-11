import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class AppUsers with ChangeNotifier {
  // Private list that needs to get the firebase users
  final List<AppUser> _appUsers = [
    // dummy data
    AppUser(
      userId: 'SB09',
      userName: 'KaylaLova',
      isCurrentUser: false,
    ),

    AppUser(
      userId: 'JJ34',
      userName: 'TimTam11',
      isCurrentUser: false,
    ),
  ];

  // Getter for firebase list of users
  List<AppUser> get appUsers {
    return _appUsers;
  }
}
