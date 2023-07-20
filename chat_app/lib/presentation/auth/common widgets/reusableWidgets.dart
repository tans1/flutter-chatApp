import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textWidget(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 3.h, left: 5.w),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.grey.withOpacity(0.7),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal),
    ),
  );
}

Widget inputField(String hintText, String inputType, String icon,
    void Function(String value)? func) {
  return Container(
    width: 325.w,
    height: 50.h,
    margin: EdgeInsets.only(bottom: 20.h),
    decoration: BoxDecoration(
        border: Border.all(
          // color: AppColors.primaryFourElementText
          ),
        borderRadius: BorderRadius.all(Radius.circular(15.w))),
    child: Row(children: [
      Container(
        width: 16.w,
        margin: EdgeInsets.only(left: 10.w),
        height: 16.w,
        child: Image.asset("assets/icons/${icon}.png"),
      ),
      SizedBox(
        width: 270.w,
        height: 50.h,
        child: TextField(
          onChanged: (value) {
            func!(value);
          },
          
          autocorrect: false,
          obscureText: inputType == "password",
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              hintStyle: TextStyle(
                  // color: AppColors.primarySecondaryElementText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal)),
          style: TextStyle(
              // color: AppColors.primaryText,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
              fontFamily: "Avenir"),
        ),
      )
    ]),
  );
}

Widget forgetPassword() {
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        "Forget Password?",
        style: TextStyle(
            // color: AppColors.primaryText,
            fontSize: 12.sp,
            decoration: TextDecoration.underline,
            // decorationColor: AppColors.primaryText
            ),
      ),
    ),
  );
}

Widget footerButton(String buttonName,
  void Function()? func
) {
  return GestureDetector(
    onTap: func, // the function to submit
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(
          left: 25.w, right: 25.w, top:  buttonName == "register" ?  20.h : 40.h ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        border: Border.all(
            // color: buttonName == "register"
            //     ? AppColors.primaryFourElementText
            //     : Colors.transparent
        ),
        // color: buttonName == "register"
        //     ?  AppColors.primaryBackground:
        //       AppColors.primaryElement,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2))
        ],
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              // color: buttonName == "register"
              //     ?  AppColors.primaryText:
              //     AppColors.primaryBackground
                  ),
        ),
      ),
    ),
  );
}
