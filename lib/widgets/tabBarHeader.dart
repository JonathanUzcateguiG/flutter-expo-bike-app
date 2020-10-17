import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';

class TabBarHeader extends StatelessWidget {
  final List<String> tabNames;

  TabBarHeader({@required this.tabNames});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: <Widget>[
              Divider(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  child: TabBar(
                    isScrollable: false,
                    indicatorColor: AppColors.redColor,
                    labelColor: AppColors.greyTabHeaderColor,
                    unselectedLabelColor: AppColors.greyTabHeaderColor,
                    labelStyle: TextStyle(
                      fontSize: 10
                    ),
                    tabs: List<Widget>.generate(this.tabNames.length, (int index) {
                      return new Tab(
                        text: this.tabNames[index],
                      );
                    }),
                  ),
                ),
              ),
              Divider(
                height: 1,
              ),
            ],
          ),
        )
      ],
    );
  }
}