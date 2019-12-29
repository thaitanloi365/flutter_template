import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/auth/auth.bloc.dart';
import 'package:flutter_template/auth/auth_events.dart';
import 'package:flutter_template/auth/auth_repository.dart';
import 'package:flutter_template/auth/auth_state.dart';
import 'package:flutter_template/utils/storage.dart';
import 'package:flutter_template/views/home/home_bloc.dart';
import 'package:flutter_template/views/home/home_repository.dart';
import 'package:flutter_template/views/home/home_view.dart';
import 'package:flutter_template/views/login/login_bloc.dart';
import 'package:flutter_template/views/login/login_repository.dart';
import 'package:flutter_template/views/login/login_view.dart';
import 'package:flutter_template/views/splash_screen/splash_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocalStorage.init();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) =>
                AuthBloc(AuthRepository(context))..add(AuthEvent.appStart()),
          ),
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(LoginRepository(context)),
          ),
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(HomeRepository(context)),
          ),
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.when(
              initial: (_) => SplashScreen(),
              unauthenticated: (_) => LoginView(),
              authenticated: (_) => HomeView(),
            );
          },
        ),
      ),
    );
  }
}
