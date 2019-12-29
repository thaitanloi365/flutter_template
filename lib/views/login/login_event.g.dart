// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent(this._type);

  factory LoginEvent.loginRequest(
      {@required String email, @required String password}) = LoginRequest;

  final _LoginEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(LoginRequest) loginRequest}) {
    switch (this._type) {
      case _LoginEvent.LoginRequest:
        return loginRequest(this as LoginRequest);
    }
  }

  @override
  List get props => null;
}

@immutable
class LoginRequest extends LoginEvent {
  const LoginRequest({@required this.email, @required this.password})
      : super(_LoginEvent.LoginRequest);

  final String email;

  final String password;

  @override
  String toString() =>
      'LoginRequest(email:${this.email},password:${this.password})';
  @override
  List get props => [email, password];
}
