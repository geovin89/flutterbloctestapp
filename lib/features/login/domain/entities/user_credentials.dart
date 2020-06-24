import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';

@freezed
abstract class UserCredentials with _$UserCredentials {
  factory UserCredentials({@required String email, @required String password}) =
      _UserCredentials;
}
