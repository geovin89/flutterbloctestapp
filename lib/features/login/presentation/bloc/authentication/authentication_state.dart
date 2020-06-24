import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.uninitialized() = _Uninitialized;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
  const factory AuthenticationState.authenticated(String displayName) =
      _Authenticated;
  const factory AuthenticationState.error(String message) =
      _AuthenticationError;
}
