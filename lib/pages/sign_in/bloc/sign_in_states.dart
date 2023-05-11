import 'package:equatable/equatable.dart';

class SignInStates extends Equatable {
  final String email;
  final String password;

  const SignInStates({this.email = "", this.password = ""});

  SignInStates copyWith({String? email, String? password}) {
    return SignInStates(
        email: email ?? this.email, password: password ?? this.password);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [email, password];
}
