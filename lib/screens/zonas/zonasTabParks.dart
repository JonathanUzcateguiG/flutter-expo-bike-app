import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:expo_bike/models/zonas.dart';
import 'package:expo_bike/utils/colors.dart';

class ZonasTabParks extends StatefulWidget {

  final Function(int) onItemPressed;

  ZonasTabParks({@required this.onItemPressed});

  @override
  _ZonasTabParksState createState() => _ZonasTabParksState();
}

class _ZonasTabParksState extends State<ZonasTabParks> {
  bool parkSubMenu;

  @override
  void initState() {
    super.initState();
    parkSubMenu = false;
  }
  @override
  Widget build(BuildContext context) {
    return parkSubMenu == false ? ZonasParkWidget(onItemPressed: (index) {
      setState(() {
        parkSubMenu = true;
      });
    }) : ZonasTapParkSubWidget(onItemPressed: () {
      setState(() {
        parkSubMenu = false;
      });
    });
  }
}

class ZonasParkWidget extends StatelessWidget {

  final Function(int) onItemPressed;

  ZonasParkWidget({@required this.onItemPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: ListView.builder(
        itemCount: (bikeParks.length / 2).ceil(),
        itemBuilder: (context, idx) {
          return Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(54, 0, 54, 30),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 170,
                            width: (MediaQuery.of(context).size.width - 108 - 10) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0)
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(3.0),
                              elevation: 1.5,
                              child: GestureDetector(
                                onTap: () {
                                  onItemPressed(10);
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 120,
                                      width: 145,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/zonas_park.png'
                                          ),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            bikeParks[idx * 2].title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13
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
                      SizedBox(
                        width: 10,
                      ),
                      zonas.length > idx * 2 + 1 ? Column(
                        children: <Widget>[
                          Container(
                            height: 170,
                            width: (MediaQuery.of(context).size.width - 108 - 10) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0)
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(3.0),
                              elevation: 1.5,
                              child: GestureDetector(
                                onTap: () {
                                  onItemPressed(10);
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/zonas_park.png',
                                          ),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            bikeParks[idx * 2 + 1].title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13
                                            ),
                                          ),
                                        ],
                                      )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ) : Column(
                        children: <Widget>[

                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}

class ZonasTapParkSubWidget extends StatelessWidget {
  final Function onItemPressed;

  ZonasTapParkSubWidget({@required this.onItemPressed});

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);
  double zoomValue = 6.0;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        onItemPressed();
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/left_icon.png'
                        ),
                      ),
                    ),
                    Text(
                      'La Angelina',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    GestureDetector(
                      child: Image(
                        image: AssetImage(
                          'assets/images/favoritos_background_icon.png'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Intermedio',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/zonas_star_red_icon.png'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/zonas_star_red_icon.png'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/zonas_star_red_icon.png'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/zonas_star_red_icon.png'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    child: Image(
                      image: AssetImage(
                        'assets/images/zonas_star_icon.png'
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 92.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/images/zonas_trail_icon.png'
                        ),
                      ),
                    ],),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/images/zonas_elevation_icon.png'
                        ),
                      ),
                    ],),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/images/zonas_grade_icon.png'
                        ),
                      ),
                    ],),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Text(
                        'Trail',
                        style: TextStyle(
                          fontSize: 10.5
                        ),
                      ),
                      Text(
                        '13.3 kilometer loop',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                      Text(
                        '100% singletrack',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                    ],),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Text(
                        'Elevation',
                        style: TextStyle(
                          fontSize: 10.5
                        ),
                      ),
                      Text(
                        'Ascent: 223m',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                      Text(
                        'Descent: 223m',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                      Text(
                        'High: 349m',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                      Text(
                        'Low: 254m',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                    ],),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Text(
                        'Grade',
                        style: TextStyle(
                          fontSize: 10.5
                        ),
                      ),
                      Text(
                        'Avg grade: 3% (2”)',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                      Text(
                        'Max grade: 17% (10”)',
                        style: TextStyle(
                          fontSize: 8.5
                        ),
                      ),
                    ],),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 230,
                child: GoogleMap(
                  myLocationEnabled: true,
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: zoomValue
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/rutas_user_icon.png'
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}