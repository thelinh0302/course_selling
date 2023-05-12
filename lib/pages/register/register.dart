import 'package:course_selling/common/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register<T> extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState<T> extends State<Register<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar("Sign Up"),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30.h),
                  child: Center(
                    child: resuableText(
                        "Enter your details below & free sign up "),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      resuableText("Username"),
                      buildTextField("Please enter your username", "username",
                          'user', (value) {}),
                      resuableText("Email"),
                      buildTextField("Please enter your email", "email", 'user',
                          (value) {}),
                      resuableText("Password"),
                      buildTextField("Please enter your password", "password",
                          'lock', (value) {}),
                      resuableText("Confirm Password"),
                      buildTextField("Please enter your confirm password",
                          "confirmPassword", 'lock', (value) {}),
                      resuableText(
                          "By creating an account you have to agree with our them & condition."),
                      buildLoginAndRegisterButton("Register", "login",
                          () => {Navigator.of(context).pushNamed("/register")}),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
