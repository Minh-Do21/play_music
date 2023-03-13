class LoginParams {
  final String userName;
  final String password;

  LoginParams({required this.userName, required this.password});

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = userName;
    data['password'] = password;
    return data;
  }
}
