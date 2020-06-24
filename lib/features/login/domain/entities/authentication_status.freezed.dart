// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationStatusTearOff {
  const _$AuthenticationStatusTearOff();

  _UnauthenticatedStatus unauthenticated() {
    return const _UnauthenticatedStatus();
  }

  _AuthenticatedStatus authenticated([AuthenticatedUser user]) {
    return _AuthenticatedStatus(
      user,
    );
  }
}

// ignore: unused_element
const $AuthenticationStatus = _$AuthenticationStatusTearOff();

mixin _$AuthenticationStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticated(AuthenticatedUser user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticated(AuthenticatedUser user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(_UnauthenticatedStatus value),
    @required Result authenticated(_AuthenticatedStatus value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(_UnauthenticatedStatus value),
    Result authenticated(_AuthenticatedStatus value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStatusCopyWith<$Res> {
  factory $AuthenticationStatusCopyWith(AuthenticationStatus value,
          $Res Function(AuthenticationStatus) then) =
      _$AuthenticationStatusCopyWithImpl<$Res>;
}

class _$AuthenticationStatusCopyWithImpl<$Res>
    implements $AuthenticationStatusCopyWith<$Res> {
  _$AuthenticationStatusCopyWithImpl(this._value, this._then);

  final AuthenticationStatus _value;
  // ignore: unused_field
  final $Res Function(AuthenticationStatus) _then;
}

abstract class _$UnauthenticatedStatusCopyWith<$Res> {
  factory _$UnauthenticatedStatusCopyWith(_UnauthenticatedStatus value,
          $Res Function(_UnauthenticatedStatus) then) =
      __$UnauthenticatedStatusCopyWithImpl<$Res>;
}

class __$UnauthenticatedStatusCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$UnauthenticatedStatusCopyWith<$Res> {
  __$UnauthenticatedStatusCopyWithImpl(_UnauthenticatedStatus _value,
      $Res Function(_UnauthenticatedStatus) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedStatus));

  @override
  _UnauthenticatedStatus get _value => super._value as _UnauthenticatedStatus;
}

class _$_UnauthenticatedStatus
    with DiagnosticableTreeMixin
    implements _UnauthenticatedStatus {
  const _$_UnauthenticatedStatus();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationStatus.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthenticationStatus.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnauthenticatedStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticated(AuthenticatedUser user),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticated(AuthenticatedUser user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(_UnauthenticatedStatus value),
    @required Result authenticated(_AuthenticatedStatus value),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(_UnauthenticatedStatus value),
    Result authenticated(_AuthenticatedStatus value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedStatus implements AuthenticationStatus {
  const factory _UnauthenticatedStatus() = _$_UnauthenticatedStatus;
}

abstract class _$AuthenticatedStatusCopyWith<$Res> {
  factory _$AuthenticatedStatusCopyWith(_AuthenticatedStatus value,
          $Res Function(_AuthenticatedStatus) then) =
      __$AuthenticatedStatusCopyWithImpl<$Res>;
  $Res call({AuthenticatedUser user});

  $AuthenticatedUserCopyWith<$Res> get user;
}

class __$AuthenticatedStatusCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements _$AuthenticatedStatusCopyWith<$Res> {
  __$AuthenticatedStatusCopyWithImpl(
      _AuthenticatedStatus _value, $Res Function(_AuthenticatedStatus) _then)
      : super(_value, (v) => _then(v as _AuthenticatedStatus));

  @override
  _AuthenticatedStatus get _value => super._value as _AuthenticatedStatus;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_AuthenticatedStatus(
      user == freezed ? _value.user : user as AuthenticatedUser,
    ));
  }

  @override
  $AuthenticatedUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $AuthenticatedUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_AuthenticatedStatus
    with DiagnosticableTreeMixin
    implements _AuthenticatedStatus {
  const _$_AuthenticatedStatus([this.user]);

  @override
  final AuthenticatedUser user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationStatus.authenticated(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationStatus.authenticated'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticatedStatus &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$AuthenticatedStatusCopyWith<_AuthenticatedStatus> get copyWith =>
      __$AuthenticatedStatusCopyWithImpl<_AuthenticatedStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticated(AuthenticatedUser user),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticated(AuthenticatedUser user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(_UnauthenticatedStatus value),
    @required Result authenticated(_AuthenticatedStatus value),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(_UnauthenticatedStatus value),
    Result authenticated(_AuthenticatedStatus value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedStatus implements AuthenticationStatus {
  const factory _AuthenticatedStatus([AuthenticatedUser user]) =
      _$_AuthenticatedStatus;

  AuthenticatedUser get user;
  _$AuthenticatedStatusCopyWith<_AuthenticatedStatus> get copyWith;
}
