library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_template/models/user_token.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  UserToken,
  UserProfile,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
