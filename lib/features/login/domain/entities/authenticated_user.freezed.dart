// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authenticated_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticatedUserTearOff {
  const _$AuthenticatedUserTearOff();

  _AuthenticatedUser call({@required String name, @required String email}) {
    return _AuthenticatedUser(
      name: name,
      email: email,
    );
  }
}

// ignore: unused_element
const $AuthenticatedUser = _$AuthenticatedUserTearOff();

mixin _$AuthenticatedUser {
  String get name;
  String get email;

  $AuthenticatedUserCopyWith<AuthenticatedUser> get copyWith;
}

abstract class $AuthenticatedUserCopyWith<$Res> {
  factory $AuthenticatedUserCopyWith(
          AuthenticatedUser value, $Res Function(AuthenticatedUser) then) =
      _$AuthenticatedUserCopyWithImpl<$Res>;
  $Res call({String name, String email});
}

class _$AuthenticatedUserCopyWithImpl<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  _$AuthenticatedUserCopyWithImpl(this._value, this._then);

  final AuthenticatedUser _value;
  // ignore: unused_field
  final $Res Function(AuthenticatedUser) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

abstract class _$AuthenticatedUserCopyWith<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  factory _$AuthenticatedUserCopyWith(
          _AuthenticatedUser value, $Res Function(_AuthenticatedUser) then) =
      __$AuthenticatedUserCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email});
}

class __$AuthenticatedUserCopyWithImpl<$Res>
    extends _$AuthenticatedUserCopyWithImpl<$Res>
    implements _$AuthenticatedUserCopyWith<$Res> {
  __$AuthenticatedUserCopyWithImpl(
      _AuthenticatedUser _value, $Res Function(_AuthenticatedUser) _then)
      : super(_value, (v) => _then(v as _AuthenticatedUser));

  @override
  _AuthenticatedUser get _value => super._value as _AuthenticatedUser;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_AuthenticatedUser(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$_AuthenticatedUser
    with DiagnosticableTreeMixin
    implements _AuthenticatedUser {
  _$_AuthenticatedUser({@required this.name, @required this.email})
      : assert(name != null),
        assert(email != null);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticatedUser(name: $name, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticatedUser'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticatedUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$AuthenticatedUserCopyWith<_AuthenticatedUser> get copyWith =>
      __$AuthenticatedUserCopyWithImpl<_AuthenticatedUser>(this, _$identity);
}

abstract class _AuthenticatedUser implements AuthenticatedUser {
  factory _AuthenticatedUser({@required String name, @required String email}) =
      _$_AuthenticatedUser;

  @override
  String get name;
  @override
  String get email;
  @override
  _$AuthenticatedUserCopyWith<_AuthenticatedUser> get copyWith;
}
