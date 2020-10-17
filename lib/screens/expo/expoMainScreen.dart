import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/utils/colors.dart';

class ExpoMainScreen extends StatefulWidget {

  final Function(int) onItemPressed;

  ExpoMainScreen({@required this.onItemPressed});

  @override
  _ExpoMainScreenState createState() => _ExpoMainScreenState();
}

class _ExpoMainScreenState extends State<ExpoMainScreen>
  with AutomaticKeepAliveClientMixin {

  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Expo',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Image(
                          image: AssetImage(
                            'assets/images/left_icon.png'
                          ),
                          color: AppColors.greyfavoritosColor,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      'assets/images/expo_slider.png'
                                    ),
                                  ),
                                  Text(
                                    'Producto',
                                    style: TextStyle(
                                      color: AppColors.blackThirdColor,
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      'assets/images/expo_slider.png'
                                    ),
                                  ),
                                  Text(
                                    'Producto',
                                    style: TextStyle(
                                      color: AppColors.blackThirdColor,
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      'assets/images/expo_slider.png'
                                    ),
                                  ),
                                  Text(
                                    'Producto',
                                    style: TextStyle(
                                      color: AppColors.blackThirdColor,
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Image(
                          image: AssetImage(
                            'assets/images/right_icon.png'
                          ),
                          color: AppColors.greyfavoritosColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              widget.onItemPressed(7);
                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(46.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(46.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'INFO',
                                        style: TextStyle(
                                          color: AppColors.redColor,
                                          fontSize: 20
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 93,
                              width: 93,
                              child: new Material(
                                borderRadius: BorderRadius.circular(16.0),
                                elevation: 6.0,
                                child: new Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Puesto',
                                        style: TextStyle(
                                          color: AppColors.blackThirdColor,
                                          fontSize: 12
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          BottomFixedLabel()
        ],
      ),
    );
  }
}