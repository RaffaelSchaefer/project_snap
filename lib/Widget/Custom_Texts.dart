import "package:flutter/material.dart";

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30, left: 20),
        child: Text(
          "Lore Ipsum",
          style: TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.0,
              fontFamily: 'Montserrat'),
        ));
  }
}

class SubText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 20),
        child: Text(
          "Last Work",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.0,
              fontFamily: 'Montserrat'),
        ));
  }
}
