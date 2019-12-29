// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_token;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProfile> _$userProfileSerializer = new _$UserProfileSerializer();
Serializer<UserToken> _$userTokenSerializer = new _$UserTokenSerializer();

class _$UserProfileSerializer implements StructuredSerializer<UserProfile> {
  @override
  final Iterable<Type> types = const [UserProfile, _$UserProfile];
  @override
  final String wireName = 'UserProfile';

  @override
  Iterable<Object> serialize(Serializers serializers, UserProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'avatar',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserProfile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserTokenSerializer implements StructuredSerializer<UserToken> {
  @override
  final Iterable<Type> types = const [UserToken, _$UserToken];
  @override
  final String wireName = 'UserToken';

  @override
  Iterable<Object> serialize(Serializers serializers, UserToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserProfile)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserToken deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserProfile)) as UserProfile);
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfile extends UserProfile {
  @override
  final String name;
  @override
  final String avatar;
  @override
  final String email;
  @override
  final String phone;

  factory _$UserProfile([void Function(UserProfileBuilder) updates]) =>
      (new UserProfileBuilder()..update(updates)).build();

  _$UserProfile._({this.name, this.avatar, this.email, this.phone})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'name');
    }
    if (avatar == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'avatar');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'email');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'phone');
    }
  }

  @override
  UserProfile rebuild(void Function(UserProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileBuilder toBuilder() => new UserProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfile &&
        name == other.name &&
        avatar == other.avatar &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), avatar.hashCode), email.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserProfile')
          ..add('name', name)
          ..add('avatar', avatar)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class UserProfileBuilder implements Builder<UserProfile, UserProfileBuilder> {
  _$UserProfile _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _avatar;
  String get avatar => _$this._avatar;
  set avatar(String avatar) => _$this._avatar = avatar;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  UserProfileBuilder();

  UserProfileBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _avatar = _$v.avatar;
      _email = _$v.email;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserProfile;
  }

  @override
  void update(void Function(UserProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserProfile build() {
    final _$result = _$v ??
        new _$UserProfile._(
            name: name, avatar: avatar, email: email, phone: phone);
    replace(_$result);
    return _$result;
  }
}

class _$UserToken extends UserToken {
  @override
  final UserProfile user;
  @override
  final String token;

  factory _$UserToken([void Function(UserTokenBuilder) updates]) =>
      (new UserTokenBuilder()..update(updates)).build();

  _$UserToken._({this.user, this.token}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('UserToken', 'user');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('UserToken', 'token');
    }
  }

  @override
  UserToken rebuild(void Function(UserTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTokenBuilder toBuilder() => new UserTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserToken && user == other.user && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserToken')
          ..add('user', user)
          ..add('token', token))
        .toString();
  }
}

class UserTokenBuilder implements Builder<UserToken, UserTokenBuilder> {
  _$UserToken _$v;

  UserProfileBuilder _user;
  UserProfileBuilder get user => _$this._user ??= new UserProfileBuilder();
  set user(UserProfileBuilder user) => _$this._user = user;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  UserTokenBuilder();

  UserTokenBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserToken;
  }

  @override
  void update(void Function(UserTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserToken build() {
    _$UserToken _$result;
    try {
      _$result = _$v ?? new _$UserToken._(user: user.build(), token: token);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserToken', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
