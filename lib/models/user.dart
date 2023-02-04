class AppUser {
  AppUser({
    required this.userId,
    required this.userName,
    required this.isCurrentUser,
  });

  //Super bare bones for this moment
  // Firebase auth has this as a String?
  String? userId;
  String userName;
  bool isCurrentUser;
  // Will want photos in future
}
