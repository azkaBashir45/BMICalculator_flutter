import 'package:flutter/material.dart';

class RepeatTextIcon extends StatelessWidget {
  final IconData iconData;
  final String label;
  RepeatTextIcon({@required this.iconData, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(label)
      ],
    );
  }
}
