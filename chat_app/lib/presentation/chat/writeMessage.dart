import 'package:flutter/material.dart';

Widget writeMessage() {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 10),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 225, 221),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.emoji_emotions),
                  iconSize: 25.0,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Type a message", border: InputBorder.none),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.attach_file),
                  iconSize: 25.0,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  iconSize: 25.0,
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 225, 221),
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
            icon: const Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.grey,
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
