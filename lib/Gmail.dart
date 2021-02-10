import 'dart:ui';

import 'package:flutter/material.dart';

class Gmail extends StatefulWidget {
  const Gmail({Key key}) : super(key: key);

  @override
  _GmailState createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("Hello Baby")));
              },
              leading: Icon(Icons.login),
              title: Text("Login"),
              trailing: IconButton(
                icon: Icon(Icons.headset),
                onPressed: () {},
              ),
              // trailing: ,
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
              // trailing: ,
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
              // trailing: ,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Wrap(
                    // runAlignment: WrapAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          "Limited-edition V-day Mini Set for you 💄✨",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey[300],
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        child: Text(
                          "Inbox",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState.showSnackBar(new SnackBar(
                        content: new Text(
                      "hello",
                      style: TextStyle(color: Colors.black),
                    )));
                  },
                  child: Container(
                    width: 60,
                    child: Icon(Icons.star_border_outlined),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.black,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       button(Icons.reply, "Reply", context),
      //       button(Icons.reply_all, "Reply All", context),
      //       button(Icons.forward, "Forward", context),
      //     ],
      //   ),
      // ),
    );
  }

  Widget button(IconData icon, String text, BuildContext context) {
    return InkWell(
      onTap: () {},
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
