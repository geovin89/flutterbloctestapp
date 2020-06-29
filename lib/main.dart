import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'app/test_app.dart';
import 'core/bloc/bloc_delegate.dart';
import 'features/login/presentation/bloc/authentication/authentication_bloc.dart';
import 'features/login/presentation/bloc/authentication/authentication_event.dart';
import 'injection/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EquatableConfig.stringify = kDebugMode;
  configureInjections(Environment.prod);

  runBlocLibraryApp();
}

void runBlocLibraryApp() {
  BlocSupervisor.delegate = DollopBlocDelegate();

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) => getIt<AuthenticationBloc>()..add(AppLaunched()),
      child: DollopApp(),
    ),
  );
}
