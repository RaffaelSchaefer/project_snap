import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_snap/Widget/Custom_BottomNav.dart';
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
        title: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Custom_Drawer(),
      body: ListView(
        children: [SimpleCard(), PreviewCard(), ComplexCard()],
      ),
      bottomNavigationBar: Custom_BotNav(),
    );
  }
}
