import "package:flutter/material.dart";

class Custom_AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      shadowColor: Colors.transparent,
      title: Text(
        "Home",
        style: TextStyle(color: Colors.orange),
      ),
    );
  }
}
