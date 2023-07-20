import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget thirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    padding: EdgeInsets.only(left: 50.w, right: 50.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.w,
            child: Image.asset('assets/icons/google.png'),
          )),
      GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.w,
            child: Image.asset('assets/icons/apple.png'),
          )),
      GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.w,
            child: Image.asset('assets/icons/facebook.png'),
          )),
    ]),
  );
}
