import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Column SidebarMenu(BuildContext context) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 30, bottom: 15),
        height: 200.h,
        width: 200.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            "assets/images/james.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        child: Text(
          "username",
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        height: 200.h,
        margin: EdgeInsets.only(top: 50),
        child: Column(children: [
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/account');
              },
              child: _helperText("Account")),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/settings');
              },
              child: _helperText("Settings")),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/home');
              },
              child: _helperText("Logout")),
        ]),
      )
    ],
  );
}

Widget _helperText(String text) {
  return Container(
    height: 50.h,
    width: 280.w,
    margin: EdgeInsets.only(bottom: 3),
    padding: EdgeInsets.only(left: 10, top: 10),
    color: Color.fromARGB(255, 16, 69, 112),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
