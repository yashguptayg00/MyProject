import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/constants.dart';

class Heading1 extends StatelessWidget {


  final String title;
  const Heading1({@required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: kHeadingBackground,
          borderRadius: BorderRadius.circular(12)
      ),

      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: kText,
            fontWeight: FontWeight.w900,
            fontSize: 50
        ),
      ),
    );
  }
}