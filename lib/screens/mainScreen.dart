import 'package:flutter/material.dart';
import 'package:expo_bike/widgets/bottomNavigationBar.dart';
import 'package:expo_bike/screens/explorar/explorarMainScreen.dart';
import 'package:expo_bike/screens/zonas/zonasMainScreen.dart';
import 'zonas/zonasParkScreen.dart';
import 'expo/expoMainScreen.dart';
import 'expo/expoProductScreen.dart';
import 'rutas/rutasMainScreen.dart';
import 'rutas/rutasSubFirstScreen.dart';
import 'rutas/rutasSubSecondScreen.dart';
import 'cuentia/userSettingScreen.dart';
import 'cuentia/cuentaMainScreen.dart';
import 'zonas/zonasTabParksSub.dart';

class MainScreen extends StatefulWidget {
  final int selectedIndex;

  MainScreen({Key key, @required this.selectedIndex}) : super(key: key);

  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static PageController pageController;
  int zonasCurrentIndex;

  void initState() {
    super.initState();

    _selectedIndex = widget.selectedIndex;
    pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgets = <Widget>[ExplorarMainScreen(),
                                    ZonasMainScreen(
                                      onItemPressed: (int index, idx) => {
                                        pageController.jumpToPage(6)
                                      },
                                    ),
                                    ExpoMainScreen(
                                      onItemPressed: (int index) => {
                                        pageController.jumpToPage(index)
                                      }
                                    ),
                                    RutasMainScreen(
                                      onItemPressed: (int index) => {
                                        pageController.jumpToPage(index)
                                      }
                                    ),
                                    CuentaMainScreen(
                                      onItemPressed: (int index) => {
                                        pageController.jumpToPage(5)
                                      }),
                                    UserSettingScreen(
                                      onItemPressed: (int index) => {
                                        pageController.jumpToPage(4)
                                      },
                                    ),
                                    ZonasParkScreen(
                                      onItemPressed: (int index) => {
                                        pageController.jumpToPage(index)
                                      },
                                    ),
                                    ExpoProductoScreen(),
                                    RutasSubFirstScreen(
                                      onItemPressed: (int index) => {
                                        pageController.jumpToPage(index)
                                      },
                                    ),
                                    RutasSubSecondScreen(),
                                    ZonasTabParksSub()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _widgets,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
                                activeIndex: _selectedIndex,
                                onItemPressed: (int index) => {
                                  this._onItemTapped(index)
                                },)
    );
  }
}