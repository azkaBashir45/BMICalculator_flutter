import 'package:flutter/material.dart';
import 'Screen/inputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        //theme change
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
        ));
    // theme: ThemeData().copyWith(
    //   primaryColor: Colors.black,
    //   scaffoldBackgroundColor: Colors.black,
    // ));
  }
}
