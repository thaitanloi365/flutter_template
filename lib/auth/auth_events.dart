import 'package:super_enum/super_enum.dart';

part 'auth_events.g.dart';

@superEnum
enum _AuthEvent {
  @object
  AppStart,

  @object
  Logout,
}
