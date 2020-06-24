import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../features/login/domain/entities/authenticated_user.dart';
import '../../domain/repositories/login_repository.dart';

@prod
@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<Either<Failure, AuthenticatedUser>> getAuthenticatedUser() async {
    try {
      return Right(
        AuthenticatedUser(
          email: 'user.email',
          name: 'user.displayName',
        ),
      );
    } on FirebaseAuthException catch (exception) {
      return Left(AuthVerificationFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, bool>> isUserAuthenticated() async {
    try {
      final isSignedIn = false;
      return Right(isSignedIn);
    } on FirebaseAuthException catch (exception) {
      return Left(AuthVerificationFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> signInWithCredentials(
      String email, String password) async {
    try {
      return Right(
        AuthenticatedUser(
          email: 'user.email',
          name: 'user.displayName',
        ),
      );
    } on FirebaseAuthException catch (exception) {
      return Left(SignInFailure(exception.message));
    }
  }
}
