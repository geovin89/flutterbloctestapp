import 'package:flutter/foundation.dart';
import 'package:flutterbloctestapp/features/login/domain/entities/authenticated_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_status.freezed.dart';

@freezed
abstract class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.unauthenticated() = _UnauthenticatedStatus;
  const factory AuthenticationStatus.authenticated([AuthenticatedUser user]) =
      _AuthenticatedStatus;
}
