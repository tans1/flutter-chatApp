import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget recieveText(){
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(right: 50, bottom: 15),
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 250, 225, 221),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )),
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "17:46",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.sp,
          ),
        ),
        Text(
          "werhiuwerhifuh",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
          ),
        )
      ],
    ),
  );
}
