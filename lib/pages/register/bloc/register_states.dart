import 'package:equatable/equatable.dart';

class RegisterStates extends Equatable {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;

  const RegisterStates(
      {this.username = "",
      this.password = "",
      this.email = "",
      this.confirmPassword = ""});
  RegisterStates copyWith(
      {String? email,
      String? password,
      String? username,
      String? confirmPassword}) {
    return RegisterStates(
        email: email ?? this.email,
        password: password ?? this.password,
        confirmPassword: password ?? this.confirmPassword,
        username: username ?? this.username);
  }

  @override
  List<Object?> get props => [email, password, username, confirmPassword];
}
