import 'package:flutter/material.dart';
import 'package:expo_bike/utils/bottomMenus.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:expo_bike/screens/mainScreen.dart';
import 'package:expo_bike/services/storageservice.dart';

class MainSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getMainSplashLogo(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
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
                        padding: EdgeInsets.only(top: 70),
                        child: Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.network(
                            snapshot.data
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
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(AppColors.redColor)
                ),
              ),
            ),
          );
        }
      },
    );
  }
}