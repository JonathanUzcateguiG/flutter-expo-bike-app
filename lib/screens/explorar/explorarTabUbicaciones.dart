import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:expo_bike/services/locationservice.dart';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class ExplorarTabUbicaciones extends StatefulWidget {
  _ExplorarTabUbicacionesState createState() => _ExplorarTabUbicacionesState();
}

class _ExplorarTabUbicacionesState extends State<ExplorarTabUbicaciones> {
  List<bool> filterFlags = [true, true, true, true];
  double zoomValue = 14.0;

  LatLng _center;
  Completer<GoogleMapController> _controller = Completer();
  LocationData _locationData;
  LocationService _locationService;

  @override
  void initState() {
    super.initState();

    // this.getLocation();

    this.locationServiceIntialize();
  }

  // Future<void> getLocation() async {
  //   await Permission.location.request().isGranted;

  //   var geolocator = Geolocator();

  //   GeolocationStatus geolocationStatus = await geolocator.checkGeolocationPermissionStatus();

  //   switch (geolocationStatus) {
  //     case GeolocationStatus.denied:
  //       print('denied');
  //       break;
  //     case GeolocationStatus.disabled:
  //       print('disabled');
  //       break;
  //     case GeolocationStatus.restricted:
  //       print('restricted');
  //       break;
  //     case GeolocationStatus.unknown:
  //       print('unknown');
  //       break;
  //     case GeolocationStatus.granted:
  //       await Geolocator()
  //             .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
  //             .then((Position _position) {
  //               if (_position != null) {
  //                 setState(() {
  //                   _center = new LatLng(_position.latitude, _position.longitude);
  //                 });
  //               }
  //             }).catchError((onError) {
  //               print(onError);
  //             });
  //   }
  // }

  locationServiceIntialize() async {
    _locationService = new LocationService();
    await _locationService.initailize();

    if (!_locationService.isEnableService()) {
      await _locationService.setEnableService();
    }

    if (!_locationService.isEnablePermission()) {
      await _locationService.setEnablePermission();
    }

    _locationData = await _locationService.getCurrentLocation();

    setState(() {
      _center = new LatLng(_locationData.latitude, _locationData.longitude);
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  // Modal window para filtrar segun elemento
  Future<void> _muestraComercios() async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
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
                                image:
                                    AssetImage('assets/images/close_icon.png'),
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
                                  color: AppColors.greyFilterDialogColor),
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
                                  'assets/images/filter_first_icon.png'),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    filterFlags[0] = !filterFlags[0];
                                  });
                                  print(filterFlags[0]);
                                },
                                child: Image(
                                    image: AssetImage(filterFlags[0] == true
                                        ? 'assets/images/checkbox_true_icon.png'
                                        : 'assets/images/checkbox_false_icon.png'),
                                    width: 30))
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
                                  'assets/images/filter_second_icon.png'),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    filterFlags[1] = !filterFlags[1];
                                  });
                                },
                                child: Image(
                                    image: AssetImage(filterFlags[1] == true
                                        ? 'assets/images/checkbox_true_icon.png'
                                        : 'assets/images/checkbox_false_icon.png'),
                                    width: 30))
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
                                  'assets/images/filter_third_icon.png'),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    filterFlags[2] = !filterFlags[2];
                                  });
                                },
                                child: Image(
                                    image: AssetImage(filterFlags[2] == true
                                        ? 'assets/images/checkbox_true_icon.png'
                                        : 'assets/images/checkbox_false_icon.png'),
                                    width: 30))
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
                                  'assets/images/filter_fourth_icon.png'),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    filterFlags[3] = !filterFlags[3];
                                  });
                                },
                                child: Image(
                                    image: AssetImage(filterFlags[3] == true
                                        ? 'assets/images/checkbox_true_icon.png'
                                        : 'assets/images/checkbox_false_icon.png'),
                                    width: 30))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

// Barra menu justo arriba de mapa
  @override
  Widget build(BuildContext context) {
    return _center != null
        ? Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(_center.latitude.toString()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(_center.longitude.toString()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image(
                          image: AssetImage(
                              'assets/images/explorar_ubicaciones_message_icon.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          _muestraComercios();
                          //_showDialog();
                        },
                        child: Image(
                          image: AssetImage(
                              'assets/images/explorar_ubicaciones_menu_icon.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image(
                          image: AssetImage(
                              'assets/images/explorar_ubicaciones_search_icon.png'),
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
                          zoom: zoomValue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Center(
            child: Container(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                  valueColor:
                      new AlwaysStoppedAnimation<Color>(AppColors.redColor)),
            ),
          );
  }
}
