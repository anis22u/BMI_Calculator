import 'package:flutter/material.dart';

class plusminusbutton extends StatelessWidget {
  final IconData iconss;
  final Function() press;
  final String heroTag;

  plusminusbutton(
      {required this.iconss, required this.press, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      elevation: 0.0,
      onPressed: press,
      shape: CircleBorder(),
      backgroundColor: Color(0xFF3A3C50),
      child: Icon(iconss),
    );
  }
}
