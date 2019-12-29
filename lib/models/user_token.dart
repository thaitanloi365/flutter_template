library user_token;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_template/models/serializers.dart';

part 'user_token.g.dart';

abstract class UserProfile implements Built<UserProfile, UserProfileBuilder> {
  // Fields
  String get name;
  String get avatar;
  String get email;
  String get phone;

  UserProfile._();

  factory UserProfile([void Function(UserProfileBuilder) updates]) =
      _$UserProfile;

  String toJson() {
    return json.encode(serializers.serializeWith(UserProfile.serializer, this));
  }

  static UserProfile fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserProfile.serializer, json.decode(jsonString));
  }

  static Serializer<UserProfile> get serializer => _$userProfileSerializer;
}

abstract class UserToken implements Built<UserToken, UserTokenBuilder> {
  // Fields
  UserProfile get user;
  String get token;

  UserToken._();

  factory UserToken([void Function(UserTokenBuilder) updates]) = _$UserToken;

  String toJson() {
    return json.encode(serializers.serializeWith(UserToken.serializer, this));
  }

  static UserToken fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserToken.serializer, json.decode(jsonString));
  }

  static Serializer<UserToken> get serializer => _$userTokenSerializer;
}




