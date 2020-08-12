import "package:flutter/material.dart";

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30, left: 10),
        child: Text(
          "Lore Ipsum",
          style: TextStyle(
              fontSize: 75,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.0,
              fontFamily: 'Montserrat'),
        ));
  }
}
