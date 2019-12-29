// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class AuthState extends Equatable {
  const AuthState(this._type);

  factory AuthState.initial() = Initial;

  factory AuthState.authenticated({@required dynamic data}) = Authenticated;

  factory AuthState.unauthenticated({@required dynamic data}) = Unauthenticated;

  final _AuthState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Initial) initial,
      @required R Function(Authenticated) authenticated,
      @required R Function(Unauthenticated) unauthenticated}) {
    switch (this._type) {
      case _AuthState.Initial:
        return initial(this as Initial);
      case _AuthState.Authenticated:
        return authenticated(this as Authenticated);
      case _AuthState.Unauthenticated:
        return unauthenticated(this as Unauthenticated);
    }
  }

  @override
  List get props => null;
}

@immutable
class Initial extends AuthState {
  const Initial._() : super(_AuthState.Initial);

  factory Initial() {
    _instance ??= Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Authenticated extends AuthState {
  const Authenticated({@required this.data}) : super(_AuthState.Authenticated);

  final dynamic data;

  @override
  String toString() => 'Authenticated(data:${this.data})';
  @override
  List get props => [data];
}

@immutable
class Unauthenticated extends AuthState {
  const Unauthenticated({@required this.data})
      : super(_AuthState.Unauthenticated);

  final dynamic data;

  @override
  String toString() => 'Unauthenticated(data:${this.data})';
  @override
  List get props => [data];
}
