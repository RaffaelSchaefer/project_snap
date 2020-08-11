import 'package:flutter/material.dart';
import 'package:project_snap/Widget/Custom_Drawer.dart';
import 'package:project_snap/Widget/cards.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        drawer: Custom_Drawer(),
        body: SimpleCard());
  }
}
