import 'package:chat_app/presentation/reusableWidgets/changepassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "account setting",
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/james.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print("change image");
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "username",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                margin: EdgeInsets.only(left: 10, bottom: 10, top: 5),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 233, 25, 25)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "james",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 243, 221),
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(
                        Icons.check,
                        color: Colors.black,
                        size: 30,
                        weight: 50,
                      ),
                    )
                  ],
                ),
              ),
              Row(
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
              fillPassword()
            ],
          ),
        ),
      ),
    );
  }
}
