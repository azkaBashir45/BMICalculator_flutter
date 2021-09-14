import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Container.dart';
import 'iconText.dart';

const Color activeColor = Color(0xFF1D1E33);
const Color deactiveColor = Color(0xFFd1cbff);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  Gender selectGender;
//without enum
  // void updatetheColor(int gender) {
  //   if (gender == 1) {
  //     maleColor = activeColor;
  //   }
  //   if (gender == 2) {
  //     maleColor = activeColor;
  //   }
  // }
//with enum integer ki form m yd rkna muskil hojata h hm text ki form m yd rky gy
  // void updatetheColor(Gender genderType) {
  //   if (genderType == Gender.male) {
  //     maleColor = activeColor;
  //   }
  //   if (genderType == Gender.female) {
  //     maleColor = activeColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    child: RepeateContainer(
                      colors: selectGender == Gender.male
                          ? activeColor
                          : deactiveColor,
                      cardWidjet: RepeatTextIcon(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    child: RepeateContainer(
                      colors: selectGender == Gender.female
                          ? activeColor
                          : deactiveColor,
                      cardWidjet: RepeatTextIcon(
                          iconData: FontAwesomeIcons.female, label: 'Female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeateContainer(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeateContainer(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: RepeateContainer(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
