import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../injection/injection.dart';
import '../bloc/sign_in/sign_in_bloc.dart';
import '../widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Colors.redAccent,
      ),
      body: BlocProvider<SignInBloc>(
        create: (context) => getIt<SignInBloc>(),
        child: SignInForm(
          key: Key(UIKeys.kSignInFormKey),
        ),
      ),
    );
  }
}
