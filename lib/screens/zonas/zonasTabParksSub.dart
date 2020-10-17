import 'package:flutter/material.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';

class ZonasTabParksSub extends StatefulWidget {
  @override
  _ZonasTabParksSubState createState() => _ZonasTabParksSubState();
}

class _ZonasTabParksSubState extends State<ZonasTabParksSub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
            ],
          ),
          BottomFixedLabel()
        ],
      ),
    );
  }
}