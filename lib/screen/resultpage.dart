import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';

import '../components/buttombutton.dart';
import '../components/reusablecards.dart';

class resultp extends StatelessWidget {
  //const resultp({super.key});

  final String result;
  final String getresult;
  final String getInterpretation;

  resultp(
      {required this.result,
      required this.getresult,
      required this.getInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result', style: ktitlestyle),
          )),
          Expanded(
            flex: 7,
            child: reusablecard(
              colour: kactiveColour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    getresult,
                    style: kresulttstyle,
                  ),
                  Text(
                    result,
                    style: kbmiresultstyle,
                  ),
                  Text(
                    getInterpretation,
                    style: kresultnodystyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Buttombuton(
              gesture: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
