import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterbloctestapp/core/constants/constants.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/bloc.dart';
import 'package:flutterbloctestapp/features/login/presentation/widgets/sign_in_form.dart';
import 'package:flutterbloctestapp/injection/injection.dart';
import 'package:injectable/injectable.dart' as _injectable;
import 'package:mockito/mockito.dart';

void main() {
  SignInBloc signInBloc;
  AuthenticationBloc authenticationBloc;

  setUpAll(() {
    configureInjections(_injectable.Environment.test);
    signInBloc = getIt<SignInBloc>();
    authenticationBloc = getIt<AuthenticationBloc>();

    when(signInBloc.state).thenReturn(SignInState.initial());
  });

  group('SignInFrom', () {
    Key emailField;
    Key passwordField;

    setUp(() {
      emailField = Key(UIKeys.kEmailFieldKey);
      passwordField = Key(UIKeys.kPasswordFieldKey);
    });

    testWidgets('should show snack bar loading when on loading',
        (WidgetTester tester) async {
      //TODO 1.0: why is both initial and loading state needs to emitted here for the test to succeed? Is there a better way to test this out?
      whenListen(signInBloc,
          Stream.fromIterable([SignInState.initial(), SignInState.loading()]));

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

    testWidgets(
        'should have sign in button disabled initially and enabled after entering email/pwd',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: const MaterialApp(
            home: Scaffold(body: SignInForm()),
          ),
        ),
      );

      final signInButtonFinder = find.byKey(Key(UIKeys.kSignInButtonKey));

      expect(signInButtonFinder, findsOneWidget);
      expect(
        (signInButtonFinder.evaluate().first.widget as MaterialButton).enabled,
        false,
      );

      await tester.enterText(find.byKey(emailField), 'hello@mail.com');
      await tester.pumpAndSettle();

      await tester.enterText(find.byKey(passwordField), 'Ge@123');
      await tester.pumpAndSettle();

      //TODO 2.0: the test fails because the _isSignInButtonEnabled is not called again after submitting email/password.
      //TODO: How do I mock the signInBloc in order to return valid states on each addition of events.
      expect(
        (signInButtonFinder.evaluate().first.widget as MaterialButton).enabled,
        true,
      );
    });
  });
}
