import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget friendsList() {
  return Container(
    height: 80.h,
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 239, 247, 246),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          )
        ]),
    margin: EdgeInsets.only(bottom: 15),
    child: Row(children: [
      Container(
        height: 50.h,
        width: 50.w,
        margin: EdgeInsets.only(left: 10, right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset("assets/images/james.jpg"),
        ),
      ),
      Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 230.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "James",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      child: Text(
                        "fri",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Sounds good to me",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              )
            ]),
      )
    ]),
  );
}
