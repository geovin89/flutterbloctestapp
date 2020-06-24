import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
}

class ServerFailure extends Failure {
  @override
  List<Object> get props => [];
}

class CacheFailure extends Failure {
  @override
  List<Object> get props => [];
}

class AuthVerificationFailure extends Failure {
  final String failureReason;

  const AuthVerificationFailure(this.failureReason);

  @override
  List<Object> get props => [failureReason];
}

class SignInFailure extends Failure {
  final String failureReason;

  const SignInFailure(this.failureReason);

  @override
  List<Object> get props => [failureReason];
}
