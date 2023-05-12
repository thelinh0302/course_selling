import 'package:course_selling/common/widgets/common_widget.dart';
import 'package:course_selling/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:course_selling/pages/sign_in/bloc/sign_in_events.dart';
import 'package:course_selling/pages/sign_in/bloc/sign_in_states.dart';
import 'package:course_selling/pages/sign_in/sign_in_controller.dart';
import 'package:course_selling/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInStates>(builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar("Log In"),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildThirdPartyLogin(context),
                  Center(
                      child: resuableText("Or use your email account login")),
                  Container(
                    margin: EdgeInsets.only(top: 66.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        resuableText("Email"),
                        SizedBox(height: 5.h),
                        buildTextField(
                            "Please enter your email", "email", 'user',
                            (value) {
                          context.read<SignInBloc>().add(EmailEvent(value));
                        }),
                        resuableText("Password"),
                        SizedBox(height: 5.h),
                        buildTextField(
                            "Please enter your password", "password", 'lock',
                            (value) {
                          context.read<SignInBloc>().add(PasswordEvent(value));
                        }),
                        forgotPassword(),
                        buildLoginAndRegisterButton(
                            "Login",
                            "login",
                            () => {
                                  SignInController(context: context)
                                      .handleSignIn('email')
                                }),
                        buildLoginAndRegisterButton(
                            "Register",
                            "register",
                            () =>
                                {Navigator.of(context).pushNamed("/register")}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
