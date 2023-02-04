import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class AppUsers with ChangeNotifier {
  // Private list
  List<AppUser> _appUsers = [];

  // Getter for firebase list of users
  List<AppUser> get appUsers {
    return _appUsers;
  }
}
