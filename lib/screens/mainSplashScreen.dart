import 'package:flutter/material.dart';
import 'package:expo_bike/utils/bottomMenus.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:expo_bike/screens/mainScreen.dart';

class MainSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_splash.png'),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    decoration: BoxDecoration(
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/images/main_splash_logo.png',
                      ),
                      height: 180,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Row(
                    children: List.generate(BottomMenus.length, (index) {
                      return Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainScreen(selectedIndex: index)
                                  )
                                );
                              },
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      BottomMenus[index].normalImage,
                                    ),
                                    height: 38,
                                    width: 26,
                                    color: AppColors.greyDarkerColor
                                  ),
                                  Text(
                                    BottomMenus[index].title,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}