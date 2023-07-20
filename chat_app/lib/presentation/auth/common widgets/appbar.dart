import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar authAppbar(String title) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Container(
        // color: AppColors.primarySecondaryBackground,
        height: 1,
      ),
    ),
    title: Center(
      child: Text(
        title,
        style: TextStyle(
            // color: AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal),
      ),
    ),
  );
}
