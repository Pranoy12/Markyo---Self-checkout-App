import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:login_markyo_app/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(name: '', email: '', password: '');

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(jsonDecode(user));
    notifyListeners();
  }
}
