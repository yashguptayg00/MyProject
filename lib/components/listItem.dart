import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/constants.dart';
class ListItem extends StatelessWidget {

  final String title;
  final Function onTap;
  const ListItem({
    @required this.title,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 12, right: 12),
            decoration: BoxDecoration(
                color: kButtonBackground,
                borderRadius: BorderRadius.circular(12)
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kText,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
