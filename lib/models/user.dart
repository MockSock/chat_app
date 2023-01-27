class AppUser {
  AppUser({
    required this.userId,
    required this.userName,
  });

  //Super bare bones for this moment
  // Firebase auth has this as a String?
  String? userId;
  String userName;
  // Will want photos in future
}
