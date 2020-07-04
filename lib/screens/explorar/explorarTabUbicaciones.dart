import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:expo_bike/utils/colors.dart';

class ExplorarTabUbicaciones extends StatefulWidget {

  _ExplorarTabUbicacionesState createState() => _ExplorarTabUbicacionesState();
}

class _ExplorarTabUbicacionesState extends State<ExplorarTabUbicaciones> {
  Completer<GoogleMapController> _controller = Completer();

  List<bool> filterFlags = [true, true, true, true];
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  double zoomValue = 6.0;

  @override
  void initState() {
    super.initState();
  }

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
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Container(
                height: 440,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                            'Filtro',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.greyFilterDialogColor
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'assets/images/filter_first_icon.png'
                            ),
                          ),
                          SizedBox(
                            width: 20
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                filterFlags[0] = !filterFlags[0];
                              });
                              print(filterFlags[0]);
                            },
                            child: Image(
                              image: AssetImage(
                                filterFlags[0] == true ? 'assets/images/checkbox_true_icon.png' :
                                                          'assets/images/checkbox_false_icon.png'
                              ),
                              width: 30
                            )
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'assets/images/filter_second_icon.png'
                            ),
                          ),
                          SizedBox(
                            width: 20
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                filterFlags[1] = !filterFlags[1];
                              });
                            },
                            child: Image(
                              image: AssetImage(
                                filterFlags[1] == true ? 'assets/images/checkbox_true_icon.png' :
                                                          'assets/images/checkbox_false_icon.png'
                              ),
                              width: 30
                            )
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'assets/images/filter_third_icon.png'
                            ),
                          ),
                          SizedBox(
                            width: 20
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                filterFlags[2] = !filterFlags[2];
                              });
                            },
                            child: Image(
                              image: AssetImage(
                                filterFlags[2] == true ? 'assets/images/checkbox_true_icon.png' :
                                                          'assets/images/checkbox_false_icon.png'
                              ),
                              width: 30
                            )
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'assets/images/filter_fourth_icon.png'
                            ),
                          ),
                          SizedBox(
                            width: 20
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                filterFlags[3] = !filterFlags[3];
                              });
                            },
                            child: Image(
                              image: AssetImage(
                                filterFlags[3] == true ? 'assets/images/checkbox_true_icon.png' :
                                                          'assets/images/checkbox_false_icon.png'
                              ),
                              width: 30
                            )
                          )
                        ],
                      ),
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
    return Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage(
                        'assets/images/explorar_ubicaciones_message_icon.png'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      _showDialog();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/explorar_ubicaciones_menu_icon.png'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage(
                        'assets/images/explorar_ubicaciones_search_icon.png'
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 40),
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
            ),
          ],
        ),
    );
  }
}