import 'package:flutter/material.dart';
import 'package:expo_bike/utils/bottomMenus.dart';
import 'package:expo_bike/utils/colors.dart';

class BottomNavigationBarWidget extends StatefulWidget {

  final int activeIndex;
  final Function(int) onItemPressed;

  const BottomNavigationBarWidget({Key key, this.activeIndex, this.onItemPressed});

  BottomNavigationBarWidgetState createState() => BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int   selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.activeIndex;
  }

  void _onItemTaped(index) {
    setState(() {
      selectedIndex = index;
    });

    widget.onItemPressed(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: BottomMenus.map((BottomMenu bottomMenu) {
        return BottomNavigationBarItem(
          icon: ImageIcon(
            bottomMenu.id == selectedIndex ? AssetImage(bottomMenu.activeImage) : AssetImage(bottomMenu.normalImage)
          ),
          title: Text(
            bottomMenu.title
          )
        );
      }).toList(),
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: AppColors.greyDarkColor,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 26,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTaped,
    );
  }
}