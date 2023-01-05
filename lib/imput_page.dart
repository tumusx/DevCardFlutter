import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micard/reusable_card.dart';

import 'icon_content.dart';

const inactiveCardColour = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

enum Gender {
  male,
  female;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(Gender gender) {
    setState(() {
      if (gender == Gender.male) {
        if (maleCardColour == inactiveCardColour) {
          maleCardColour = activeCardColor;
          femaleCardColour = inactiveCardColour;
        } else {
          maleCardColour = inactiveCardColour;
        }
      }
      if (gender == Gender.female) {
        if (femaleCardColour == inactiveCardColour) {
          femaleCardColour = activeCardColor;
          maleCardColour = inactiveCardColour;
        } else {
          femaleCardColour = inactiveCardColour;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0E21),
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColour(Gender.male);
                      },
                      child: ReusableCard(
                        maleCardColour,
                        const IconContent(
                          Icon(FontAwesomeIcons.mars, size: 80),
                          Text(
                            'MALE',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColour(Gender.female);
                      },
                      child: ReusableCard(
                          femaleCardColour,
                          const IconContent(
                            Icon(FontAwesomeIcons.venus, size: 80),
                            Text(
                              'FEMALE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCardCenter(
                const Color(0xFFFFFFFF),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      const Color(0xFF1D1E33),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(FontAwesomeIcons.mars, size: 80.0),
                          Text(
                            'MALE',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      const Color(0xFF1D1E33),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(FontAwesomeIcons.mars, size: 80),
                          SizedBox(height: 15),
                          Text('MALE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
