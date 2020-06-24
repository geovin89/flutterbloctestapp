// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutterbloctestapp/mocks/login_mocks.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:flutterbloctestapp/features/login/domain/repositories/login_repository.dart';
import 'package:flutterbloctestapp/features/login/data/repositories/login_repository_impl.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:flutterbloctestapp/features/login/domain/usecases/sign_in_with_credentials.dart';
import 'package:flutterbloctestapp/features/login/domain/usecases/get_authenticated_user.dart';
import 'package:flutterbloctestapp/features/login/domain/usecases/get_user_authentication_status.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<AuthenticationBloc>(() => MockAuthenticationBloc());
    g.registerFactory<LoginRepository>(() => MockLoginRepository());
    g.registerFactory<SignInBloc>(() => MockSignInBloc());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<LoginRepository>(() => LoginRepositoryImpl());
    g.registerFactory<SignInWithCredentials>(
        () => SignInWithCredentials(g<LoginRepository>()));
    g.registerFactory<GetAuthenticatedUser>(
        () => GetAuthenticatedUser(g<LoginRepository>()));
    g.registerFactory<GetUserAuthenticationStatus>(
        () => GetUserAuthenticationStatus(g<LoginRepository>()));
    g.registerFactory<SignInBloc>(() => SignInBloc(g<SignInWithCredentials>()));
    g.registerFactory<AuthenticationBloc>(() => AuthenticationBloc(
        g<GetUserAuthenticationStatus>(), g<GetAuthenticatedUser>()));
  }
}
