import 'package:chat_app/presentation/reusableWidgets/changepassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double _slidervalue = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("phone setting"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 250.w,
                      height: 50.h,
                      padding: EdgeInsets.only(left: 10, top: 10),
                      margin: EdgeInsets.only(right: 20),
                      color: Colors.blue,
                      child: Text(
                        "change password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 243, 243, 221),
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.check,
                          size: 50,
                          weight: 500,
                          color: Colors.blue,
                        )),
                  ],
                ),
              ),
              fillPassword(),
              Container(
                width: 250.w,
                height: 50.h,
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.only(right: 20, top: 30),
                color: Colors.blue,
                child: Text(
                  "add fingerprint",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 180.w,
                      height: 50.h,
                      padding: EdgeInsets.only(left: 10, top: 10),
                      color: Colors.blue,
                      child: Text(
                        "notification",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.check,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 180.w,
                height: 50.h,
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.only(top: 40),
                color: Colors.blue,
                child: Text(
                  "change fontsize",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Slider(
                  value: _slidervalue,
                  min: 13,
                  max: 25,
                  divisions: 100,
                  label: _slidervalue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _slidervalue = value;
                    });
                  },
                  activeColor: Colors.blue,
                  inactiveColor: Color.fromARGB(255, 215, 215, 215),
                  thumbColor: Color.fromARGB(255, 116, 180, 233),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
