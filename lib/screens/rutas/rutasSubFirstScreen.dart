import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/utils/colors.dart';

class RutasSubFirstScreen extends StatefulWidget {

  final Function(int) onItemPressed;

  RutasSubFirstScreen({@required this.onItemPressed});

  @override
  _RutasSubFirstScreenState createState() => _RutasSubFirstScreenState();
}

class _RutasSubFirstScreenState extends State<RutasSubFirstScreen>
  with AutomaticKeepAliveClientMixin {

  Completer<GoogleMapController> _subFirstController = Completer();

  bool get wantKeepAlive => true;
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  double zoomValue = 6.0;

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _subFirstController.
      complete(controller);
    });
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
              backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Container(
                height: 300,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Compartir',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/rutas_whatsapp_icon.png'
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Whatsapp',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.greyDarkerColor
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/rutas_facebook_icon.png'
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.greyDarkerColor
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/rutas_instagram_icon.png'
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Instagram',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.greyDarkerColor
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/rutas_twitter_icon.png'
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Twitter',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.greyDarkerColor
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/rutas_copiarlink_icon.png'
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Cop iar Link',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.greyDarkerColor
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
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
            height: 10,
          ),
          Positioned(
            left: 0,
            top: 50,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
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
            left: 0,
            top: MediaQuery.of(context).size.height / 2.7,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/rutas_sos_icon.png'
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showDialog();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/rutas_share_icon.png'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 50 + MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'TIEMPO',
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.greyDarkColor
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '00:00:05',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/rutas_vertical_line.png'
                        ),
                        color: AppColors.blackThirdColor,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'DISTANCIA (KM)',
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.greyDarkColor
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '0.25',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: AppColors.greyOpacityColor,
                    thickness: 1.3,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'AVG PACE (KM)',
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.greyDarkColor
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '0:00',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/rutas_vertical_line.png'
                        ),
                        color: AppColors.blackThirdColor,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'BPM',
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.greyDarkColor
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '120',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            left: 0,
            bottom: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      widget.onItemPressed(9);
                    },
                    child: Container(
                      width: 85,
                      height: 85,
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
                ],
              ),
          ),
          BottomFixedLabel()
        ],
      ),
    );
  }
}