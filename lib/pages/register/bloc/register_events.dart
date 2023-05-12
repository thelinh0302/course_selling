import 'dart:html';

abstract class RegisterEvents {
  const RegisterEvents();
}

class EmailEvent extends RegisterEvents {
  final String email;
  const EmailEvent(this.email);
}

class PasswordEvent extends RegisterEvents {
  final String password;
  const PasswordEvent(this.password);
}

class UserNameEvent extends RegisterEvents {
  final String username;
  const UserNameEvent(this.username);
}

class ConfirmPasswordEvent extends RegisterEvents {
  final String confirmPassword;
  const ConfirmPasswordEvent(this.confirmPassword);
}
