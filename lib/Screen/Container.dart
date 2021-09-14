import 'package:flutter/material.dart';

class RepeateContainer extends StatelessWidget {
  final Color colors;
  final Widget cardWidjet;
  final Function onPress;
  RepeateContainer({@required this.colors, this.cardWidjet,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardWidjet,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}
