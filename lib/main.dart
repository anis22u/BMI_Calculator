import 'package:flutter/material.dart';

import 'screen/inputscreen.dart';

void main() => runApp(BmiC());

class BmiC extends StatelessWidget {
  const BmiC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(0xFF0A0E21),
            appBarTheme: AppBarTheme(color: Color(0xFF0A0E21))),
        initialRoute: 'inputp',
        routes: {
          'inputp': (context) => Inputpage(),
          //'resultpagee': (context) => resultp()
        });
  }
}
