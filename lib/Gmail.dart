import 'dart:ui';

import 'package:flutter/material.dart';

class Gmail extends StatelessWidget {
  const Gmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // leading: Icon(Icons.arrow_forward),
        actions: [
          IconButton(icon: Icon(Icons.archive), onPressed: () {}),
          IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          IconButton(icon: Icon(Icons.mail), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                PopupMenuItem(
                  child: Text("New group"),
                  value: "New grou",
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                  value: "New broadcast",
                ),
                PopupMenuItem(
                  child: Text("Whatsapp Web"),
                  value: "Whatsapp Web",
                ),
                PopupMenuItem(
                  child: Text("Starred messages"),
                  value: "Starred messages",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              color: Colors.pink,
            ),
            Container(
              height: 600,
              color: Colors.yellow,
            ),
            Container(
              height: 600,
              color: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(Icons.reply, "Reply"),
            button(Icons.reply_all, "Reply All"),
            button(Icons.forward, "Forward"),
          ],
        ),
      ),
    );
  }

  Widget button(IconData icon, String text) {
    return InkWell(
      onTap: () {
        print("hello deepa babe");
      },
      child: Container(
        width: 130,
        height: 60,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 8,
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
