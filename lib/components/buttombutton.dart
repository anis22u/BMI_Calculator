import 'package:flutter/material.dart';

import 'constants.dart';

class Buttombuton extends StatelessWidget {
  final void Function() gesture;
  final String text;

  Buttombuton({required this.gesture, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
        color: kbutomCcolor,
        margin: EdgeInsets.only(top: 10),
        height: kbutomcCoantainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
