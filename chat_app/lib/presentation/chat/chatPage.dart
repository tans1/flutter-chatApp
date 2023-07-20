import 'package:chat_app/presentation/chat/recieve.dart';
import 'package:chat_app/presentation/chat/send.dart';
import 'package:chat_app/presentation/chat/writeMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 145, 109),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color.fromARGB(255, 64, 145, 109),
        elevation: 0,
        title: Center(
          child: Text(
            "James",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                    height: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sendMessage(), 
                          sendMessage(), 
                          sendMessage(), 
                          recieveText(),
                          recieveText(),
                          recieveText()
                          ]),
                    )),
                writeMessage()
              
              
              ],
            )),
      ),
    );
  }
}
