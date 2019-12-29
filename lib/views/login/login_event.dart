import 'package:super_enum/super_enum.dart';

part 'login_event.g.dart';

@superEnum
enum _LoginEvent {
  @Data(fields: [
    DataField('email', String),
    DataField('password', String),
  ])
  LoginRequest,
}
