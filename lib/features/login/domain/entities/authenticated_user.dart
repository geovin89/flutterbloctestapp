import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';

@freezed
abstract class AuthenticatedUser with _$AuthenticatedUser {
  factory AuthenticatedUser({@required String name, @required String email}) =
      _AuthenticatedUser;
}
