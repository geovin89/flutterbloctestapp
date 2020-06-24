import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/utils/validators.dart';
import '../../../domain/entities/user_credentials.dart';
import '../../../domain/usecases/sign_in_with_credentials.dart';
import '../bloc.dart';

@prod
@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInWithCredentials _signInWithCredentials;

  SignInBloc(this._signInWithCredentials);

  @override
  SignInState get initialState => SignInState.initial();

  @override
  Stream<Transition<SignInEvent, SignInState>> transformEvents(
    Stream<SignInEvent> events,
    TransitionFunction<SignInEvent, SignInState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! SignInEmailChanged && event is! SignInPasswordChanged;
    });
    final debounceStream = events.where((event) {
      return event is SignInEmailChanged || event is SignInPasswordChanged;
    }).debounceTime(const Duration(milliseconds: 300));

    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignInEmailChanged) {
      yield* _mapSignInEmailChangedToState(event.email);
    } else if (event is SignInPasswordChanged) {
      yield* _mapSignInPasswordChangedToState(event.password);
    } else if (event is SignInWithCredentialsPressed) {
      yield* _mapAppSignInWithCredentialsPressedToState(
          event.email, event.password);
    } else if (event is SignInWithGooglePressed) {
      yield SignInState.initial();
    }
  }

  Stream<SignInState> _mapSignInEmailChangedToState(String email) async* {
    yield state.copyWith(
      isEmailValid: Validators.isValidEmail(email),
    );
  }

  Stream<SignInState> _mapSignInPasswordChangedToState(String password) async* {
    yield state.copyWith(
      isPasswordValid: Validators.isValidPassword(password),
    );
  }

  Stream<SignInState> _mapAppSignInWithCredentialsPressedToState(
      String email, String password) async* {
    yield SignInState.loading();

    final result = await _signInWithCredentials(
      UserCredentials(
        email: email,
        password: password,
      ),
    );

    yield result.fold(
      (failure) => SignInState.failure('Failed to login user'),
      (_) => SignInState.success(),
    );
  }

//  Stream<LoginState> _mapSignInWithGooglePressedToState() async* {
//    try {
//      await _userRepository.signInWithGoogle();
//      yield LoginState.success();
//    } catch (_) {
//      yield LoginState.failure();
//    }
//  }
}
