// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserCredentialsTearOff {
  const _$UserCredentialsTearOff();

  _UserCredentials call({@required String email, @required String password}) {
    return _UserCredentials(
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $UserCredentials = _$UserCredentialsTearOff();

mixin _$UserCredentials {
  String get email;
  String get password;

  $UserCredentialsCopyWith<UserCredentials> get copyWith;
}

abstract class $UserCredentialsCopyWith<$Res> {
  factory $UserCredentialsCopyWith(
          UserCredentials value, $Res Function(UserCredentials) then) =
      _$UserCredentialsCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$UserCredentialsCopyWithImpl<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  _$UserCredentialsCopyWithImpl(this._value, this._then);

  final UserCredentials _value;
  // ignore: unused_field
  final $Res Function(UserCredentials) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$UserCredentialsCopyWith<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  factory _$UserCredentialsCopyWith(
          _UserCredentials value, $Res Function(_UserCredentials) then) =
      __$UserCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

class __$UserCredentialsCopyWithImpl<$Res>
    extends _$UserCredentialsCopyWithImpl<$Res>
    implements _$UserCredentialsCopyWith<$Res> {
  __$UserCredentialsCopyWithImpl(
      _UserCredentials _value, $Res Function(_UserCredentials) _then)
      : super(_value, (v) => _then(v as _UserCredentials));

  @override
  _UserCredentials get _value => super._value as _UserCredentials;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_UserCredentials(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_UserCredentials
    with DiagnosticableTreeMixin
    implements _UserCredentials {
  _$_UserCredentials({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserCredentials(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCredentials'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserCredentials &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$UserCredentialsCopyWith<_UserCredentials> get copyWith =>
      __$UserCredentialsCopyWithImpl<_UserCredentials>(this, _$identity);
}

abstract class _UserCredentials implements UserCredentials {
  factory _UserCredentials(
      {@required String email, @required String password}) = _$_UserCredentials;

  @override
  String get email;
  @override
  String get password;
  @override
  _$UserCredentialsCopyWith<_UserCredentials> get copyWith;
}
