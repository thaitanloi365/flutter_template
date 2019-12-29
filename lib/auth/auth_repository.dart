import 'package:flutter/widgets.dart';

abstract class _AuthRepository {}

class AuthRepository implements _AuthRepository {
  final BuildContext context;

  const AuthRepository(this.context);
}
