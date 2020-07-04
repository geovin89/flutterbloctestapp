import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/entities/user_credentials.dart';
import '../../../domain/usecases/sign_in_with_credentials.dart';
import '../bloc.dart';
import 'models/models.dart';

@prod
@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInWithCredentials _signInWithCredentials;

  SignInBloc(this._signInWithCredentials);

  @override
  SignInState get initialState => const SignInState();

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
      yield* _mapAppSignInWithCredentialsPressedToState();
    } else if (event is SignInWithGooglePressed) {
      yield SignInState();
    }
  }

  Stream<SignInState> _mapSignInEmailChangedToState(String value) async* {
    final email = Email.dirty(value);
    yield state.copyWith(
      email: email,
      status: Formz.validate([email, state.password]),
    );
  }

  Stream<SignInState> _mapSignInPasswordChangedToState(String value) async* {
    final password = Password.dirty(value);
    yield state.copyWith(
      password: password,
      status: Formz.validate([state.email, password]),
    );
  }

  Stream<SignInState> _mapAppSignInWithCredentialsPressedToState() async* {
    yield state.copyWith(status: FormzStatus.submissionInProgress);

    final result = await _signInWithCredentials(
      UserCredentials(
        email: state.email.value,
        password: state.password.value,
      ),
    );

    yield result.fold(
      (failure) => state.copyWith(
        status: FormzStatus.submissionFailure,
        failureMessage: 'Failed to login user',
      ),
      (_) => state.copyWith(status: FormzStatus.submissionSuccess),
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
