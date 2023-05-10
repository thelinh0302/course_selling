abstract class SigInEvents {
  const SigInEvents();
}

class EmailEvent extends SigInEvents {
  final String email;
  const EmailEvent(this.email);
}

class PasswordEvent extends SigInEvents {
  final String password;
  const PasswordEvent(this.password);
}
