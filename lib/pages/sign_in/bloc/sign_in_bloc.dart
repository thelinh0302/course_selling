import 'package:course_selling/pages/sign_in/bloc/sign_in_events.dart';
import 'package:course_selling/pages/sign_in/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SigInEvents, SignInStates> {
  SignInBloc() : super(const SignInStates()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }
  void _emailEvent(EmailEvent event, Emitter<SignInStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInStates> emit) {
    emit(state.copyWith(password: event.password));
  }
}
