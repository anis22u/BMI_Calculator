import 'package:bmi_calculator/bmibrain.dart';
import 'package:bmi_calculator/screen/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/buttombutton.dart';
import '../components/constants.dart';
import '../components/icon content.dart';
import '../components/plusminusbutton.dart';
import '../components/reusablecards.dart';

enum gendertype { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  gendertype? gender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          // Firts Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusablecard(
                    Gesture: () {
                      setState(() {
                        gender = gendertype.male;
                      });
                    },
                    colour: gender == gendertype.male
                        ? kactiveColour
                        : kinactiveColour,
                    cardchild: cardicon(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: reusablecard(
                    Gesture: () {
                      setState(() {
                        gender = gendertype.female;
                      });
                    },
                    colour: gender == gendertype.female
                        ? kactiveColour
                        : kinactiveColour,
                    cardchild: cardicon(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                )
              ],
            ),
          ),

          // Second  Row
          Expanded(
            child: reusablecard(
              colour: kactiveColour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: ktextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: knumstyle),
                      const Text(
                        'cm',
                        style: ktextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 13),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 26),
                          thumbColor: Color(0xffEB1555),
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1555)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        //activeColor: Colors.white,
                        inactiveColor: Color(0xff8D8E98),
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ))
                ],
              ),
            ),
          ),
          // Third Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusablecard(
                    colour: kactiveColour,
                    cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: ktextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: knumstyle,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: plusminusbutton(
                                    iconss: FontAwesomeIcons.minus,
                                    press: () {
                                      setState(() {
                                        weight -= 1;
                                      });
                                    },
                                    heroTag: 'btn1',
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: plusminusbutton(
                                    iconss: FontAwesomeIcons.plus,
                                    press: () {
                                      setState(() {
                                        weight += 1;
                                      });
                                    },
                                    heroTag: 'btn2',
                                  ),
                                )
                              ])
                        ]),
                  ),
                ),
                // AGE
                Expanded(
                  child: reusablecard(
                    colour: kactiveColour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: ktextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              child: plusminusbutton(
                                iconss: FontAwesomeIcons.minus,
                                press: () {
                                  setState(() {
                                    age -= 1;
                                  });
                                },
                                heroTag: 'btn3',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 50,
                              child: plusminusbutton(
                                iconss: FontAwesomeIcons.plus,
                                press: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                                heroTag: 'btn4',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // Pink Button
          Buttombuton(
            gesture: () {
              Bmibrain calc = Bmibrain(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => resultp(
                            result: calc.bmiresult(),
                            getresult: calc.getResult(),
                            getInterpretation: calc.getInterpretation(),
                          )));
            },
            text: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
