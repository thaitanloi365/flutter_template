import 'package:flutter/widgets.dart';
import 'package:flutter_template/models/user_token.dart';

abstract class _LoginRepository {
  Future<UserToken> login(String email, String password);
}

class LoginRepository implements _LoginRepository {
  final BuildContext context;

  const LoginRepository(this.context);
  @override
  Future<UserToken> login(String email, String password) {
    // TODO: implement login
    return null;
  }
}
