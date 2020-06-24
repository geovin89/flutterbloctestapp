import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AppLaunched extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {}

class LogOut extends AuthenticationEvent {}
