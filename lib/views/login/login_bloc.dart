import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template/utils/storage.dart';
import 'package:flutter_template/views/login/login_events.dart';
import 'package:flutter_template/views/login/login_repository.dart';
import 'package:flutter_template/views/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository);

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield LoginState.loading();
    yield* event.when(
      loginRequest: (e) => mapGetLoginToState(e),
    );
  }

  Stream<LoginState> mapGetLoginToState(LoginRequest e) async* {
    try {
      // var data = await loginRepository.login(e.email, e.password);

      // yield LoginState.success(data: data);
      print("*** loaindasdf");
      await Future.delayed(Duration(seconds: 3));
      print(["*** loaindas123123df", e]);
      if (e.email == "test" && e.password == "1") {
        var s = await LocalStorage.saveToken("test");
        print("**** s $s");
        yield LoginState.success();
      } else {
        yield LoginState.error(message: "Email or password is incorrect");
      }
    } catch (error, stackStrace) {
      print(error);
      yield LoginState.error(message: error.message);
    }
  }
}
