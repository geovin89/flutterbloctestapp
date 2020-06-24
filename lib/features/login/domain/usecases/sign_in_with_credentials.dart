import 'package:dartz/dartz.dart';
import 'package:flutterbloctestapp/core/errors/failure.dart';
import 'package:flutterbloctestapp/features/login/domain/entities/authenticated_user.dart';
import 'package:flutterbloctestapp/features/login/domain/entities/user_credentials.dart';
import 'package:flutterbloctestapp/features/login/domain/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@injectable
class SignInWithCredentials {
  final LoginRepository _loginRepository;

  SignInWithCredentials(this._loginRepository);

  Future<Either<Failure, AuthenticatedUser>> call(
      UserCredentials credentials) async {
    final signInResult = await _loginRepository.signInWithCredentials(
        credentials.email, credentials.password);

    return signInResult.fold(
      (failure) => Left(failure),
      (authenticatedUser) => Right(authenticatedUser),
    );
  }
}
