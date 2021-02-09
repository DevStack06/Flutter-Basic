import 'package:basic/Gmail.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => Gmail()));
        },
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Text("Hi Deepa"),
      ),
    );
  }
}
