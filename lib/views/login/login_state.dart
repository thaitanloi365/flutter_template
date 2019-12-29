import 'package:flutter_template/models/user_token.dart';
import 'package:super_enum/super_enum.dart';

part 'login_state.g.dart';

@superEnum
enum _LoginState {
  @object
  Initial,

  @object
  Loading,

  @Data(fields: [
    DataField('data', UserToken),
  ])
  Success,

  @Data(fields: [
    DataField('message', String),
  ])
  Error,
}
