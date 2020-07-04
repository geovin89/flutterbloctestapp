import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterbloctestapp/features/login/domain/usecases/get_authenticated_user.dart';
import 'package:flutterbloctestapp/features/login/domain/usecases/sign_in_with_credentials.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/bloc.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/sign_in/models/models.dart';
import 'package:formz/formz.dart';
import 'package:mockito/mockito.dart';

class MockSignInWithCredentials extends Mock implements SignInWithCredentials {}

class MockGetAuthenticatedUser extends Mock implements GetAuthenticatedUser {}

void main() {
  SignInWithCredentials signInWithCredentials;

  setUp(() {
    signInWithCredentials = MockSignInWithCredentials();
  });

  group("SignInBloc", () {
    group('No events', () {
      blocTest(
        'should emit initial when no events are added',
        build: () async => SignInBloc(signInWithCredentials),
        skip: 0,
        expect: [SignInState()],
      );
    });

    group('SignInEmailChanged event', () {
      const validEmail = 'g@gmail.com';
      const invalidEmail = 'g';

      final emailValidState = SignInState(
        status: FormzStatus.invalid,
        email: Email.dirty(validEmail),
      );

      final emailInvalidState = SignInState(
        status: FormzStatus.invalid,
        email: Email.dirty(invalidEmail),
      );

      blocTest(
        'should emit correct states when email is changed from invalid to valid',
        build: () async {
          return SignInBloc(signInWithCredentials);
        },
        //TODO 2: The tests fail with debounce stream code in SignInBloc and passes without it
        act: (signInBloc) async {
          signInBloc.add(const SignInEmailChanged(email: invalidEmail));
          await Future.delayed(const Duration(milliseconds: 305));
          signInBloc.add(const SignInEmailChanged(email: validEmail));
          await Future.delayed(const Duration(milliseconds: 305));
        },
        verify: (_) async {
          verifyNever(signInWithCredentials(any));
        },
        expect: [emailInvalidState, emailValidState],
      );

      blocTest(
        'should emit initial with EmailValid=false when email is invalid',
        build: () async {
          return SignInBloc(signInWithCredentials);
        },
        act: (signInBloc) async => signInBloc.add(
          const SignInEmailChanged(email: invalidEmail),
        ),
        wait: const Duration(milliseconds: 350),
        verify: (_) async {
          verifyNever(signInWithCredentials(any));
        },
        expect: [emailInvalidState],
      );
    });
  });
}
