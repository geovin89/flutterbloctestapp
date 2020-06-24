import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/authentication_status.dart';
import '../../../domain/usecases/get_authenticated_user.dart';
import '../../../domain/usecases/get_user_authentication_status.dart';
import '../bloc.dart';

@prod
@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final GetUserAuthenticationStatus _getUserAuthenticationStatus;
  final GetAuthenticatedUser _getAuthenticatedUser;

  AuthenticationBloc(
    this._getUserAuthenticationStatus,
    this._getAuthenticatedUser,
  );

  @override
  AuthenticationState get initialState =>
      const AuthenticationState.uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppLaunched) {
      yield* _mapAppLaunchedToState();
    } else if (event is LoggedIn) {
      yield* _mapLoggedInToState();
    } else if (event is LogOut) {
      yield* _mapLogOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppLaunchedToState() async* {
    final result = await _getUserAuthenticationStatus();
    yield result.fold(
      (failure) => const AuthenticationState.error(
          'Unable to check authentication. Please sign in again'),
      (authenticationStatus) =>
          _getAuthenticationStateFromStatus(authenticationStatus),
    );
  }

  Stream<AuthenticationState> _mapLoggedInToState() async* {
    final result = await _getAuthenticatedUser();
    yield result.fold(
      (failure) => const AuthenticationState.error(
          'Unable to get auth record for signed in user. Please sign in again'),
      (authenticatedUser) =>
          AuthenticationState.authenticated(authenticatedUser.name),
    );
  }

  Stream<AuthenticationState> _mapLogOutToState() async* {
    yield const AuthenticationState.unauthenticated();
  }

  AuthenticationState _getAuthenticationStateFromStatus(
      AuthenticationStatus status) {
    return status.when(
      unauthenticated: () => const AuthenticationState.unauthenticated(),
      authenticated: (user) => AuthenticationState.authenticated(user.name),
    );
  }
}
