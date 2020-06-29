import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloctestapp/core/constants/constants.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/bloc.dart';

import '../bloc/sign_in/sign_in_bloc.dart';
import '../bloc/sign_in/sign_in_event.dart';
import 'create_account_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                key: Key(UIKeys.kSnackBarKey),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const Text('Login Failure'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.status.isSubmissionInProgress) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                key: Key(UIKeys.kSnackBarKey),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Logging In...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.status.isSubmissionSuccess) {
          context.bloc<AuthenticationBloc>().add(LoggedIn());
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: ListView(
              children: <Widget>[
                EmailInputField(),
                PasswordInputField(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SignInButton(),
                      CreateAccountButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      condition: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          key: Key(UIKeys.kEmailFieldKey),
          onChanged: (value) =>
              context.bloc<SignInBloc>().add(SignInEmailChanged(email: value)),
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            labelText: 'Email',
          ),
          keyboardType: TextInputType.emailAddress,
          autovalidate: true,
          autocorrect: false,
          validator: (_) {
            return state.email.invalid ? 'Invalid Email' : null;
          },
        );
      },
    );
  }
}

class PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      condition: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          key: Key(UIKeys.kPasswordFieldKey),
          onChanged: (value) => context
              .bloc<SignInBloc>()
              .add(SignInPasswordChanged(password: value)),
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            labelText: 'Password',
          ),
          obscureText: true,
          autovalidate: true,
          autocorrect: false,
          validator: (_) {
            return state.password.invalid ? 'Invalid Password' : null;
          },
        );
      },
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      condition: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return RaisedButton(
          key: Key(UIKeys.kSignInButtonKey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onPressed: state.status.isValidated
              ? () {
                  context
                      .bloc<SignInBloc>()
                      .add(SignInWithCredentialsPressed());
                }
              : null,
          child: const Text('Sign in'),
        );
      },
    );
  }
}
