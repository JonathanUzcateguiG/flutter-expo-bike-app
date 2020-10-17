import 'package:flutter/material.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';
import 'package:expo_bike/widgets/tabBarHeader.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/utils/menus.dart';
import 'package:expo_bike/screens/zonas/zonasTabCities.dart';
import 'package:expo_bike/models/zonas.dart';


class ZonasMainScreen extends StatefulWidget {

  final Function(int, int) onItemPressed;

  ZonasMainScreen({@required this.onItemPressed});

  @override
  _ZonasMainScreenState createState() => _ZonasMainScreenState();
}

class _ZonasMainScreenState extends State<ZonasMainScreen>
  with AutomaticKeepAliveClientMixin {

  bool get wantKeepAlive => true;

  void _onItemPressed(int index, int idx) {
    widget.onItemPressed(index, idx);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: DefaultTabController(
        length: zonasMenus.length,
        initialIndex: 0,
        child: Stack(
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MenuTopHeader(title: 'Zonas',),
                  Container(
                    child: TabBarHeader(tabNames: zonasMenus,)
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: List<Widget>.generate(zonasMenus.length, (int index) {
                          return ZonasTabCities(zonasList: zonas,
                                                onItemPressed: (int index, int idx) =>
                                                  _onItemPressed(index, idx));
                        }).toList(),
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