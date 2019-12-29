import 'package:super_enum/super_enum.dart';

part 'home_state.g.dart';

@superEnum
enum _HomeState {
  @object
  Initial,

  @object
  Loading,

  @Data(fields: [
    DataField('data', dynamic),
  ])
  Success,

  @Data(fields: [
    DataField('message', String),
  ])
  Error,
}
