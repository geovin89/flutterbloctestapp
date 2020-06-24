import 'package:dartz/dartz.dart';
import 'package:flutterbloctestapp/core/errors/failure.dart';
import 'package:flutterbloctestapp/features/login/domain/entities/authenticated_user.dart';
import 'package:flutterbloctestapp/features/login/domain/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@injectable
class GetAuthenticatedUser {
  final LoginRepository _loginRepository;

  GetAuthenticatedUser(this._loginRepository);

  Future<Either<Failure, AuthenticatedUser>> call() async {
    final authenticatedUserResult =
        await _loginRepository.getAuthenticatedUser();

    return authenticatedUserResult.fold(
      (failure) => Left(failure),
      (authenticatedUser) => Right(authenticatedUser),
    );
  }
}
