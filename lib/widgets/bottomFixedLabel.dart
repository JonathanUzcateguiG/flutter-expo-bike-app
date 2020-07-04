import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';

class BottomFixedLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 43,
        decoration: BoxDecoration(
          color: AppColors.greyDarkerColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'PUBLICIDAD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                // fontFamily: 'HelveticaBold',
                letterSpacing: 5
              ),
            )
          ],
        ),
      ),
    );
  }
}