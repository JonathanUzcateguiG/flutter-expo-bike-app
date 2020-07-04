import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/utils/colors.dart';

class RutasMainScreen extends StatefulWidget {

  final Function(int) onItemPressed;

  RutasMainScreen({@required this.onItemPressed});

  @override
  _RutasMainScreenState createState() => _RutasMainScreenState();
}

class _RutasMainScreenState extends State<RutasMainScreen>
  with AutomaticKeepAliveClientMixin {

  Completer<GoogleMapController> _controller = Completer();

  bool get wantKeepAlive => true;
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  double zoomValue = 6.0;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Future<void> _showDialog() async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context)
      {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image(
                              image: AssetImage(
                                'assets/images/close_icon.png'
                              ),
                              width: 20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            child: Image(
                              image: AssetImage(
                                'assets/images/left_icon.png'
                              )
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              'assets/images/rutas_dialog_logo.png'
                            ),
                            width: 250,
                          ),
                          GestureDetector(
                            child: Image(
                              image: AssetImage(
                                'assets/images/right_icon.png'
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                        'assets/images/rutas_dialog_user_icon.png'
                                      )
                                    ),
                                    Text(
                                      'María Quesada Meza',
                                      style: TextStyle(
                                        fontSize: 6,
                                        color: AppColors.greyOpacityColor
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '25 de mayo del 2020',
                                  style: TextStyle(
                                    fontSize: 6,
                                    color: AppColors.greyOpacityColor
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ] ,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                            'assets/images/expo_slider.png'
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                            'assets/images/expo_slider.png'
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                            'assets/images/expo_slider.png'
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                            'assets/images/expo_slider.png'
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                            'assets/images/expo_slider.png'
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                            'assets/images/expo_slider.png'
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MenuTopHeader(title: 'Rutas',),
          SizedBox(
            height: 20,
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            left: 0,
            top: 90,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Image(
                                      image: AssetImage(
                                        'assets/images/rutas_search_icon.png'
                                      )
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'La Angelina',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.greyDarkColor
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Crear mi propia ruta',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.greyDarkColor
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 160,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              child: GoogleMap(
                myLocationEnabled: true,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: zoomValue
                ),
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            left: 0,
            bottom: 70,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/rutas_fly_icon.png'
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: () {
                      print('object');
                      widget.onItemPressed(8);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.redColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'COMENZAR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showDialog();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/rutas_user_icon.png'
                      ),
                    )
                  ),
                ],
              ),
            )
          ),
          BottomFixedLabel()
        ],
      ),
    );
  }
}