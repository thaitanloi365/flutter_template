// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent(this._type);

  factory HomeEvent.getUserProfile() = GetUserProfile;

  final _HomeEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(GetUserProfile) getUserProfile}) {
    switch (this._type) {
      case _HomeEvent.GetUserProfile:
        return getUserProfile(this as GetUserProfile);
    }
  }

  @override
  List get props => null;
}

@immutable
class GetUserProfile extends HomeEvent {
  const GetUserProfile._() : super(_HomeEvent.GetUserProfile);

  factory GetUserProfile() {
    _instance ??= GetUserProfile._();
    return _instance;
  }

  static GetUserProfile _instance;
}
