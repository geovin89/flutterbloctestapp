import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterbloctestapp/core/constants/constants.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/bloc.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/sign_in/models/models.dart';
import 'package:flutterbloctestapp/features/login/presentation/widgets/sign_in_form.dart';
import 'package:flutterbloctestapp/injection/injection.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart' as _injectable;
import 'package:mockito/mockito.dart';

void main() {
  SignInBloc signInBloc;
  AuthenticationBloc authenticationBloc;

  setUpAll(() {
    configureInjections(_injectable.Environment.test);
    signInBloc = getIt<SignInBloc>();
    authenticationBloc = getIt<AuthenticationBloc>();

    when(signInBloc.state).thenReturn(SignInState());
  });

  group('SignInFrom', () {
    const emailField = Key(UIKeys.kEmailFieldKey);
    const passwordField = Key(UIKeys.kPasswordFieldKey);

    testWidgets('should show snack bar loading when on loading',
        (WidgetTester tester) async {
      //TODO 1.0: why is both initial and loading state needs to emitted here for the test to succeed? Is there a better way to test this out?
      // Answer: Because BlocListener is only triggered on state changes so if you only have one state there is no state change and BlocListener will not be called.
      // I'm working on improving this in a future version but for now this is how I would set it up as well :)
      whenListen(
        signInBloc,
        Stream.fromIterable([
          SignInState(),
          SignInState().copyWith(status: FormzStatus.submissionInProgress),
        ]),
      );

      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: const MaterialApp(
            home: Scaffold(body: SignInForm()),
          ),
        ),
      );

      await tester.pump();

      expect(find.text('Logging In...'), findsOneWidget);
    });

    // testWidgets(
    //     'should have sign in button disabled initially and enabled after entering email/pwd',
    //     (WidgetTester tester) async {
    //   await tester.pumpWidget(
    //     BlocProvider.value(
    //       value: signInBloc,
    //       child: const MaterialApp(
    //         home: Scaffold(body: SignInForm()),
    //       ),
    //     ),
    //   );

    //   final signInButtonFinder = find.byKey(Key(UIKeys.kSignInButtonKey));

    //   expect(signInButtonFinder, findsOneWidget);
    //   expect(
    //     (signInButtonFinder.evaluate().first.widget as MaterialButton).enabled,
    //     false,
    //   );

    //   await tester.enterText(find.byKey(emailField), 'hello@mail.com');
    //   await tester.pumpAndSettle();

    //   await tester.enterText(find.byKey(passwordField), 'Ge@123');
    //   await tester.pumpAndSettle();

    //TODO 2.0: the test fails because the _isSignInButtonEnabled is not called again after submitting email/password.
    //TODO: How do I mock the signInBloc in order to return valid states on each addition of events.
    // Answer: This test is not a unit test and is not necessary because you are trying to test bloc functionality when this should just
    // be testing the widget functionality. See the following tests for how I would write the widget tests.
    //   expect(
    //     (signInButtonFinder.evaluate().first.widget as MaterialButton).enabled,
    //     true,
    //   );
    // });

    testWidgets('should have sign in button disabled when state is initial',
        (WidgetTester tester) async {
      when(signInBloc.state).thenReturn(SignInState());
      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: const MaterialApp(
            home: Scaffold(body: SignInForm()),
          ),
        ),
      );
      final signInButton = tester
          .widget<MaterialButton>(find.byKey(Key(UIKeys.kSignInButtonKey)));
      expect(signInButton.enabled, isFalse);
    });

    testWidgets('should have sign in button enabled when state is valid',
        (WidgetTester tester) async {
      when(signInBloc.state).thenReturn(SignInState(
        status: FormzStatus.valid,
        email: Email.dirty('hello@mail.com'),
        password: Password.dirty('Ge@123'),
      ));
      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: const MaterialApp(
            home: Scaffold(body: SignInForm()),
          ),
        ),
      );

      final signInButton = tester.widget<MaterialButton>(
        find.byKey(Key(UIKeys.kSignInButtonKey)),
      );
      expect(signInButton.enabled, isTrue);
    });

    testWidgets('should add email changed event when email is modified',
        (WidgetTester tester) async {
      when(signInBloc.state).thenReturn(SignInState());
      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: const MaterialApp(
            home: Scaffold(body: SignInForm()),
          ),
        ),
      );
      await tester.enterText(find.byKey(emailField), 'hello@mail.com');
      verify(
        signInBloc.add(SignInEmailChanged(email: 'hello@mail.com')),
      ).called(1);
    });

    testWidgets('should add password changed event when password is modified',
        (WidgetTester tester) async {
      when(signInBloc.state).thenReturn(SignInState());
      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: const MaterialApp(
            home: Scaffold(body: SignInForm()),
          ),
        ),
      );
      await tester.enterText(find.byKey(passwordField), 'Ge@123');
      verify(
        signInBloc.add(SignInPasswordChanged(password: 'Ge@123')),
      ).called(1);
    });
  });
}
