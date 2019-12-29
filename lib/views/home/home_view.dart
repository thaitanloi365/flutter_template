import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/auth/auth.bloc.dart';
import 'package:flutter_template/auth/auth_events.dart';
import 'package:flutter_template/components/buttons/button.dart';
import 'home_bloc.dart';
import 'home_state.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Center(
            child: RoundButton(
              buttonText: Text('Logout'),
              onPressed: () {
                authBloc.add(AuthEvent.logout());
              },
            ),
          );
        },
      ),
    );
  }
}
