// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_events.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent(this._type);

  factory AuthEvent.appStart() = AppStart;

  factory AuthEvent.logout() = Logout;

  final _AuthEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(AppStart) appStart,
      @required R Function(Logout) logout}) {
    switch (this._type) {
      case _AuthEvent.AppStart:
        return appStart(this as AppStart);
      case _AuthEvent.Logout:
        return logout(this as Logout);
    }
  }

  @override
  List get props => null;
}

@immutable
class AppStart extends AuthEvent {
  const AppStart._() : super(_AuthEvent.AppStart);

  factory AppStart() {
    _instance ??= AppStart._();
    return _instance;
  }

  static AppStart _instance;
}

@immutable
class Logout extends AuthEvent {
  const Logout._() : super(_AuthEvent.Logout);

  factory Logout() {
    _instance ??= Logout._();
    return _instance;
  }

  static Logout _instance;
}
