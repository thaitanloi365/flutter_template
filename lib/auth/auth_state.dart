import 'package:super_enum/super_enum.dart';

part 'auth_state.g.dart';

@superEnum
enum _AuthState {
  @object
  Initial,

  @Data(fields: [
    DataField('data', dynamic),
  ])
  Authenticated,

  @Data(fields: [
    DataField('data', dynamic),
  ])
  Unauthenticated,
}
