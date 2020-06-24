// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Uninitialized uninitialized() {
    return const _Uninitialized();
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Authenticated authenticated(String displayName) {
    return _Authenticated(
      displayName,
    );
  }

  _AuthenticationError error(String message) {
    return _AuthenticationError(
      message,
    );
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required Result unauthenticated(),
    @required Result authenticated(String displayName),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result unauthenticated(),
    Result authenticated(String displayName),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(_Uninitialized value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result error(_AuthenticationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(_Uninitialized value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result error(_AuthenticationError value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class _$UninitializedCopyWith<$Res> {
  factory _$UninitializedCopyWith(
          _Uninitialized value, $Res Function(_Uninitialized) then) =
      __$UninitializedCopyWithImpl<$Res>;
}

class __$UninitializedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UninitializedCopyWith<$Res> {
  __$UninitializedCopyWithImpl(
      _Uninitialized _value, $Res Function(_Uninitialized) _then)
      : super(_value, (v) => _then(v as _Uninitialized));

  @override
  _Uninitialized get _value => super._value as _Uninitialized;
}

class _$_Uninitialized with DiagnosticableTreeMixin implements _Uninitialized {
  const _$_Uninitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.uninitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.uninitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Uninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required Result unauthenticated(),
    @required Result authenticated(String displayName),
    @required Result error(String message),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result unauthenticated(),
    Result authenticated(String displayName),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(_Uninitialized value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result error(_AuthenticationError value),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(_Uninitialized value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result error(_AuthenticationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class _Uninitialized implements AuthenticationState {
  const factory _Uninitialized() = _$_Uninitialized;
}

abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

class _$_Unauthenticated
    with DiagnosticableTreeMixin
    implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required Result unauthenticated(),
    @required Result authenticated(String displayName),
    @required Result error(String message),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result unauthenticated(),
    Result authenticated(String displayName),
    Result error(String message),
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
    @required Result uninitialized(_Uninitialized value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result error(_AuthenticationError value),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(_Uninitialized value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result error(_AuthenticationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthenticationState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({String displayName});
}

class __$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object displayName = freezed,
  }) {
    return _then(_Authenticated(
      displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

class _$_Authenticated with DiagnosticableTreeMixin implements _Authenticated {
  const _$_Authenticated(this.displayName) : assert(displayName != null);

  @override
  final String displayName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.authenticated(displayName: $displayName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.authenticated'))
      ..add(DiagnosticsProperty('displayName', displayName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(displayName);

  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required Result unauthenticated(),
    @required Result authenticated(String displayName),
    @required Result error(String message),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return authenticated(displayName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result unauthenticated(),
    Result authenticated(String displayName),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(_Uninitialized value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result error(_AuthenticationError value),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(_Uninitialized value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result error(_AuthenticationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated(String displayName) = _$_Authenticated;

  String get displayName;
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

abstract class _$AuthenticationErrorCopyWith<$Res> {
  factory _$AuthenticationErrorCopyWith(_AuthenticationError value,
          $Res Function(_AuthenticationError) then) =
      __$AuthenticationErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$AuthenticationErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationErrorCopyWith<$Res> {
  __$AuthenticationErrorCopyWithImpl(
      _AuthenticationError _value, $Res Function(_AuthenticationError) _then)
      : super(_value, (v) => _then(v as _AuthenticationError));

  @override
  _AuthenticationError get _value => super._value as _AuthenticationError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_AuthenticationError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_AuthenticationError
    with DiagnosticableTreeMixin
    implements _AuthenticationError {
  const _$_AuthenticationError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$AuthenticationErrorCopyWith<_AuthenticationError> get copyWith =>
      __$AuthenticationErrorCopyWithImpl<_AuthenticationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required Result unauthenticated(),
    @required Result authenticated(String displayName),
    @required Result error(String message),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result unauthenticated(),
    Result authenticated(String displayName),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(_Uninitialized value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result error(_AuthenticationError value),
  }) {
    assert(uninitialized != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(_Uninitialized value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result error(_AuthenticationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationError implements AuthenticationState {
  const factory _AuthenticationError(String message) = _$_AuthenticationError;

  String get message;
  _$AuthenticationErrorCopyWith<_AuthenticationError> get copyWith;
}
