import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/components/buttons/button.dart';
import 'package:flutter_template/views/login/login_events.dart';
import 'login_state.dart' as login_state;
import 'login_bloc.dart';
import 'login_repository.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      body: BlocBuilder<LoginBloc, login_state.LoginState>(
        builder: (context, state) {
          print(state);
          return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextFormField(),
                TextFormField(),
                RoundButton(
                  buttonText: Text("Login"),
                  backgroundColor: Colors.red,
                  loading: state is login_state.Loading,
                  onPressed: () {
                    bloc.add(
                        LoginEvent.loginRequest(email: "test", password: "1"));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
