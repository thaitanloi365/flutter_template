// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeState extends Equatable {
  const HomeState(this._type);

  factory HomeState.initial() = Initial;

  factory HomeState.loading() = Loading;

  factory HomeState.success({@required dynamic data}) = Success;

  factory HomeState.error({@required String message}) = Error;

  final _HomeState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Initial) initial,
      @required R Function(Loading) loading,
      @required R Function(Success) success,
      @required R Function(Error) error}) {
    switch (this._type) {
      case _HomeState.Initial:
        return initial(this as Initial);
      case _HomeState.Loading:
        return loading(this as Loading);
      case _HomeState.Success:
        return success(this as Success);
      case _HomeState.Error:
        return error(this as Error);
    }
  }

  @override
  List get props => null;
}

@immutable
class Initial extends HomeState {
  const Initial._() : super(_HomeState.Initial);

  factory Initial() {
    _instance ??= Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Loading extends HomeState {
  const Loading._() : super(_HomeState.Loading);

  factory Loading() {
    _instance ??= Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Success extends HomeState {
  const Success({@required this.data}) : super(_HomeState.Success);

  final dynamic data;

  @override
  String toString() => 'Success(data:${this.data})';
  @override
  List get props => [data];
}

@immutable
class Error extends HomeState {
  const Error({@required this.message}) : super(_HomeState.Error);

  final String message;

  @override
  String toString() => 'Error(message:${this.message})';
  @override
  List get props => [message];
}
