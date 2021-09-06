import 'package:flutter/material.dart';

class RepeateContainer extends StatelessWidget {
  final Color colors;
  final Widget cardWidjet;

  RepeateContainer({@required this.colors, this.cardWidjet});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardWidjet,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ));
  }
}
