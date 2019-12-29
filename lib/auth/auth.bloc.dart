import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template/utils/storage.dart';
import 'auth_state.dart';
import 'auth_events.dart';
import 'auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository);

  @override
  AuthState get initialState => AuthState.initial();
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      appStart: (e) => mapGetAppStartToState(e),
      logout: (e) => mapLogoutToState(e),
    );
  }

  Stream<AuthState> mapGetAppStartToState(AppStart e) async* {
    try {
      await Future.delayed(Duration(seconds: 2));
      String token = LocalStorage.getToken();
      if (token.isEmpty) {
        yield AuthState.unauthenticated();
      } else {
        yield AuthState.authenticated();
      }
    } catch (error, stackStrace) {
      yield AuthState.unauthenticated();
    }
  }

  Stream<AuthState> mapLogoutToState(Logout e) async* {
    try {
      await Future.delayed(Duration(seconds: 2));
      await LocalStorage.clear();
      yield AuthState.unauthenticated();
    } catch (error, stackStrace) {
      yield AuthState.unauthenticated();
    }
  }
}
