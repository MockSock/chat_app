class User {
  User({
    required this.userId,
    required this.userName,
  });

  final int userId;
  final String userName;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json['userId'],
        userName: json['username'],
      );
}
