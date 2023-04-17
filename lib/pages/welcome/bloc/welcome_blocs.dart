import 'package:course_selling/pages/welcome/bloc/welcome_events.dart';
import 'package:course_selling/pages/welcome/bloc/welcome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvents, WelcomeStates> {
  WelcomeBloc() : super(WelcomeStates()) {
    on<WelcomeEvents>(
      (event, emit) {
        emit(WelcomeStates(page: state.page));
      },
    );
  }
}
