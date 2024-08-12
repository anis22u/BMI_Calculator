import 'package:flutter/material.dart';
import 'constants.dart';

class cardicon extends StatelessWidget {
  final IconData cardicons;
  final String text;
  cardicon(this.cardicons, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardicons,
          size: 80,
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: ktextStyle,
        )
      ],
    );
  }
}
