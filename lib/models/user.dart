class AppUser {
  AppUser({
    required this.userId,
    required this.userName,
    required this.photoUrl,
  });

  // Firebase auth has this as a String?
  final String? userId;
  final String userName;
  final String photoUrl;
}
