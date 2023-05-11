import 'package:course_selling/common/widgets/flutter_toast.dart';
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
        if (emailAddress.isEmpty) {
          toastInfo(msg: "You need to fill email address");
          return;
        }
        if (passwordAddress.isEmpty) {
          toastInfo(msg: "You need to fill password address");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: passwordAddress);

          if (credential.user == null) {
            toastInfo(msg: "You don't exist");
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "You need to verify your email account");
            return;
          }
          var user = credential.user;
          if (user != null) {
            print(user);
          } else {
            toastInfo(msg: "Currently you are not a user of this app");
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: "No user found for that email");
            return;
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: "wrong password provided for that user");
            return;
          } else if (e.code == 'invalid-email') {
            toastInfo(msg: "Your email format is wrong");
            return;
          }
        }
      }
    } catch (e) {}
  }
}
