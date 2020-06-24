import 'package:bloc_test/bloc_test.dart';
import 'package:flutterbloctestapp/features/login/domain/repositories/login_repository.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: LoginRepository)
class MockLoginRepository extends Mock implements LoginRepository {}

@test
@Injectable(as: SignInBloc)
class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

@test
@Injectable(as: AuthenticationBloc)
class MockAuthenticationBloc
    extends MockBloc<AuthenticationEvent, AuthenticationState>
    implements AuthenticationBloc {}
