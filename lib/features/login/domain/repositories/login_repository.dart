import 'package:dartz/dartz.dart';
import 'package:flutterbloctestapp/core/errors/failure.dart';
import 'package:flutterbloctestapp/features/login/domain/entities/authenticated_user.dart';

abstract class LoginRepository {
  Future<Either<Failure, bool>> isUserAuthenticated();
  Future<Either<Failure, AuthenticatedUser>> getAuthenticatedUser();

  Future<Either<Failure, AuthenticatedUser>> signInWithCredentials(
      String email, String password);
}
