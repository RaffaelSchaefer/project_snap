import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_snap/Widget/Custom_BottomNav.dart';
import 'package:project_snap/Widget/Custom_Cards.dart';
import 'package:project_snap/Widget/Custom_Texts.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSize(
      //child: Custom_AppBar(), preferredSize: Size.fromHeight(50)),
      //drawer: Custom_Drawer(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.orange, Colors.red])),
        child: ListView(
          children: [
            MainText(),
            Divider(),
            SubText(),
            SimpleCard(),
            SimpleCard()
          ],
        ),
      ),
      bottomNavigationBar: Custom_BotNav(),
    );
  }
}
