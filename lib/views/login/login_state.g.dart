// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class LoginState extends Equatable {
  const LoginState(this._type);

  factory LoginState.initial() = Initial;

  factory LoginState.loading() = Loading;

  factory LoginState.success({@required UserToken data}) = Success;

  factory LoginState.error({@required String message}) = Error;

  final _LoginState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Initial) initial,
      @required R Function(Loading) loading,
      @required R Function(Success) success,
      @required R Function(Error) error}) {
    switch (this._type) {
      case _LoginState.Initial:
        return initial(this as Initial);
      case _LoginState.Loading:
        return loading(this as Loading);
      case _LoginState.Success:
        return success(this as Success);
      case _LoginState.Error:
        return error(this as Error);
    }
  }

  @override
  List get props => null;
}

@immutable
class Initial extends LoginState {
  const Initial._() : super(_LoginState.Initial);

  factory Initial() {
    _instance ??= Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Loading extends LoginState {
  const Loading._() : super(_LoginState.Loading);

  factory Loading() {
    _instance ??= Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Success extends LoginState {
  const Success({@required this.data}) : super(_LoginState.Success);

  final UserToken data;

  @override
  String toString() => 'Success(data:${this.data})';
  @override
  List get props => [data];
}

@immutable
class Error extends LoginState {
  const Error({@required this.message}) : super(_LoginState.Error);

  final String message;

  @override
  String toString() => 'Error(message:${this.message})';
  @override
  List get props => [message];
}
