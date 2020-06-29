import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import 'models/models.dart';

class SignInState extends Equatable {
  final FormzStatus status;
  final Email email;
  final Password password;
  final String failureMessage;

  const SignInState({
    this.status = FormzStatus.pure,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.failureMessage,
  });

  SignInState copyWith({
    FormzStatus status,
    Email email,
    Password password,
    String failureMessage,
  }) {
    return SignInState(
      status: status ?? this.status,
      email: email ?? this.email,
      password: password ?? this.password,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        status,
        email.value,
        email.status,
        password.value,
        password.status,
        failureMessage
      ];
}
