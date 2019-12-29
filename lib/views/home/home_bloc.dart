import 'dart:async';

import 'package:bloc/bloc.dart';
import 'home_repository.dart';
import 'home_state.dart';
import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository);

  @override
  HomeState get initialState => HomeState.initial();
  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield HomeState.loading();
    yield* event.when(
      getUserProfile: (e) => mapGetUserProfileToState(e),
    );
  }

  Stream<HomeState> mapGetUserProfileToState(GetUserProfile e) async* {
    try {} catch (error, stackStrace) {}
  }
}
