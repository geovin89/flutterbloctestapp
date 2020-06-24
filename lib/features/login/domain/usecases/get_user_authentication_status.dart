import 'package:dartz/dartz.dart';
import 'package:flutterbloctestapp/core/errors/failure.dart';
import 'package:flutterbloctestapp/features/login/domain/entities/authentication_status.dart';
import 'package:flutterbloctestapp/features/login/domain/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@injectable
class GetUserAuthenticationStatus {
  final LoginRepository _loginRepository;

  GetUserAuthenticationStatus(this._loginRepository);

  Future<Either<Failure, AuthenticationStatus>> call() async {
    final isUserAuthenticatedResult =
        await _loginRepository.isUserAuthenticated();

    return isUserAuthenticatedResult.fold(
      (failure) => Left(failure),
      (isUserAuthenticated) => _getAuthenticationStatus(isUserAuthenticated),
    );
  }

  Future<Either<Failure, AuthenticationStatus>> _getAuthenticationStatus(
      bool isSignedIn) async {
    if (isSignedIn) {
      final authenticatedUserResult =
          await _loginRepository.getAuthenticatedUser();

      return authenticatedUserResult.fold(
        (failure) => Left(failure),
        (user) => Right(AuthenticationStatus.authenticated(user)),
      );
    } else {
      return const Right(AuthenticationStatus.unauthenticated());
    }
  }
}
