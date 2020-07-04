import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';

class MenuTopHeader extends StatelessWidget {
  final String title;

  MenuTopHeader({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.blackFirstColor,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      );
  }
}