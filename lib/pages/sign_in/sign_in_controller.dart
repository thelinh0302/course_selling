import 'package:course_selling/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController {
  final BuildContext context;
  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'email') {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String passwordAddress = state.password;
        if (emailAddress.isEmpty) {}
        if (passwordAddress.isEmpty) {}

        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: passwordAddress);

          if (credential.user == null) {}
          if (!credential.user!.emailVerified) {}
          var user = credential.user;
          if (user != null) {
          } else {}
        } catch (e) {}
      }
    } catch (e) {}
  }
}
