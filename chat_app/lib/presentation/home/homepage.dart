import 'package:chat_app/presentation/home/reusebaleHome.dart';
import 'package:chat_app/presentation/home/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromARGB(255, 13, 56, 92),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Color.fromARGB(255, 13, 56, 92),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.h,
            color: Color.fromARGB(255, 13, 56, 92),
            padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  "Messages",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  "Online",
                  style: TextStyle(
                      color: Color.fromARGB(255, 189, 189, 189),
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  "Group",
                  style: TextStyle(
                      color: Color.fromARGB(255, 189, 189, 189),
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50.h,
                    child: Text(
                      "Recent chat",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 446.h,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          for (var i = 0; i < 5; i++)
                            GestureDetector(
                                onTap: () {
                                  GoRouter.of(context).push('/chat');
                                },
                                child: friendsList())
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 13, 56, 92),
          child: SidebarMenu(context)),
    );
  }
}
