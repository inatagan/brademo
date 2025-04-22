class User {
  late final String _username;
  late final String _password;

  User({required String username, required String password})
    : _username = username,
      _password = password;

  String get username => _username;
  String get password => _password;
}
