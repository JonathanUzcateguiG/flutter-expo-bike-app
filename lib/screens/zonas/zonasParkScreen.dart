import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';
import 'package:flutter/material.dart';
import 'package:expo_bike/utils/menus.dart';
import 'package:expo_bike/widgets/tabBarHeader.dart';
import 'zonasTabParks.dart';
import 'zonasTabCiclos.dart';

class ZonasParkScreen extends StatefulWidget {

  final Function(int) onItemPressed;

  ZonasParkScreen({@required this.onItemPressed});

  @override
  _ZonasParkScreenState createState() => _ZonasParkScreenState();
}

class _ZonasParkScreenState extends State<ZonasParkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: cartagoMenus.length,
        initialIndex: 0,
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MenuTopHeader(title: 'Cartago',),
                Container(
                  child: TabBarHeader(tabNames: cartagoMenus,),
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        ZonasTabParks(onItemPressed: (index) => {
                          widget.onItemPressed(index)
                        },),
                        ZonasTabCiclos(),
                        ZonasTabParks(onItemPressed: (index) => {
                          widget.onItemPressed(index)
                        },),
                        ZonasTabParks(onItemPressed: (index) => {
                          widget.onItemPressed(index)
                        },),
                        ZonasTabParks(onItemPressed: (index) => {
                          widget.onItemPressed(index)
                        },),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            BottomFixedLabel()
          ],
        ),
      ),
    );
  }
}