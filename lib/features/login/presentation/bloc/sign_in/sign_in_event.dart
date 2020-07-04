import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInEmailChanged extends SignInEvent {
  final String email;

  const SignInEmailChanged({@required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'SignInEmailChanged { email :$email }';
}

class SignInPasswordChanged extends SignInEvent {
  final String password;

  const SignInPasswordChanged({@required this.password});

  @override
  List<Object> get props => [password];

  @override
  String toString() => 'SignInPasswordChanged { password: $password }';
}

class SignInWithGooglePressed extends SignInEvent {}

class SignInWithCredentialsPressed extends SignInEvent {
  const SignInWithCredentialsPressed();

  @override
  String toString() {
    return 'SignInWithCredentialsPressed';
  }
}
