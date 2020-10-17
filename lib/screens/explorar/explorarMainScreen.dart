import 'package:flutter/material.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';
import 'package:expo_bike/widgets/tabBarHeader.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
//import 'package:expo_bike/screens/explorar/explorarTabParati.dart';
import 'package:expo_bike/screens/explorar/explorarTabUbicaciones.dart';
import 'package:expo_bike/screens/explorar/explorarTabEventos.dart';
import 'package:expo_bike/screens/explorar/explorarTabNoticias.dart';
import 'package:expo_bike/screens/explorar/explorarTabUsaditos.dart';
import 'package:expo_bike/utils/menus.dart';

class ExplorarMainScreen extends StatefulWidget {
  @override
  _ExplorarMainScreenState createState() => _ExplorarMainScreenState();
}

class _ExplorarMainScreenState extends State<ExplorarMainScreen>
  with AutomaticKeepAliveClientMixin {

  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Stack(
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MenuTopHeader(title: 'Explorar',),
                  Container(
                    child: TabBarHeader(tabNames: explorarMenus,),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          //ExplorarTabParati(),
                          ExplorarTabUbicaciones(),
                          ExplorarTabEventos(),
                          ExplorarTabNoticias(),
                          ExplorarTabUsaditos(),
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