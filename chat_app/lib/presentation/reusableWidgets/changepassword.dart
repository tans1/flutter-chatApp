import 'package:flutter/material.dart';

Widget fillPassword() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Column(children: [
      Container(
        height: 50,
        width: 300,
        child: TextField(
          enabled: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 233, 25, 25)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 233, 25, 25)),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "enter old password",
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Container(
        height: 50,
        width: 300,
        margin: EdgeInsets.only(top: 10),
        child: TextField(
          enabled: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 233, 25, 25)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 233, 25, 25)),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "enter new password",
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Container(
        height: 50,
        width: 300,
        margin: EdgeInsets.only(top: 10),
        child: TextField(
          enabled: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 233, 25, 25)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 233, 25, 25)),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "enter confirm password",
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ]),
  );
}
