import 'package:course_selling/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _reusableIcon("google"),
          const SizedBox(
            width: 50,
          ),
          _reusableIcon("apple"),
          const SizedBox(
            width: 50,
          ),
          _reusableIcon("facebook")
        ],
      ));
}

Widget _reusableIcon(String iconName) {
  return GestureDetector(
    child: SizedBox(
      height: 40.w,
      width: 40.w,
      child: Image.asset("assets/icons/${iconName}.png"),
    ),
  );
}

Widget forgotPassword() {
  return Container(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      child: const Text(
        "Forgot password",
        style: TextStyle(
            color: AppColors.primaryText,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryText),
      ),
    ),
  );
}
