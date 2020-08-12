import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_snap/Widget/Custom_BottomNav.dart';
import 'package:project_snap/Widget/Custom_Drawer.dart';

class Test extends StatefulWidget {
  Test({Key key, this.title, this.data}) : super(key: key);

  final String title;
  final String data;

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String get data => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Custom_Drawer(),
      body: Text(data),
      bottomNavigationBar: Custom_BotNav(),
    );
  }
}
