import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloctestapp/features/login/presentation/bloc/bloc.dart';
import 'package:flutterbloctestapp/features/login/presentation/pages/home_screen.dart';
import 'package:flutterbloctestapp/features/login/presentation/pages/sign_in_screen.dart';

import '../features/login/presentation/pages/splash_screen.dart';

class DollopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) => state.when(
          uninitialized: () => SplashScreen(),
          unauthenticated: () => SignInScreen(),
          authenticated: (displayName) => HomeScreen(),
          error: (message) => SignInScreen(),
        ),
      ),
    );
  }
}
