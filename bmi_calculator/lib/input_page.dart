import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male ? activeCardColor : inactiveColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    onPress: () => setState(() {
                      selectedGender = Gender.male;
                    }),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female ? activeCardColor : inactiveColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    onPress: () => setState(() {
                      selectedGender = Gender.female;
                    }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
              onPress: () => {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    onPress: () => {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    onPress: () => {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
