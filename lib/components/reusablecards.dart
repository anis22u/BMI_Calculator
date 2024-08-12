import 'package:flutter/material.dart';

class reusablecard extends StatelessWidget {
  final Color colour;
  final Widget? cardchild;
  final void Function()? Gesture;

  reusablecard({required this.colour, this.cardchild, this.Gesture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Gesture,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
