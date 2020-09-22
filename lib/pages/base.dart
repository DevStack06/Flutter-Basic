import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  const Base({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      // bottomNavigationBar: ,
      body: Center(
        child: Text("Hello world"),
      ),
    );
  }
}
