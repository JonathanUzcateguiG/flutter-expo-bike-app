import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/utils/colors.dart';


class RutasSubSecondScreen extends StatefulWidget {
  @override
  _RutasSubSecondScreenState createState() => _RutasSubSecondScreenState();
}

class _RutasSubSecondScreenState extends State<RutasSubSecondScreen> with AutomaticKeepAliveClientMixin {

  Completer<GoogleMapController> _subSecondController;

  bool get wantKeepAlive => true;
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  double zoomValue = 6.0;

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _subSecondController.
      complete(controller);
    });
  }

  @override
  void initState() {
    super.initState();
    _subSecondController = Completer();
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
            height: MediaQuery.of(context).size.height / 3,
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
            top: MediaQuery.of(context).size.height / 3 - 20,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
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
            top: 50 + MediaQuery.of(context).size.height / 3,
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
                              '0.00',
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
                              '0h',
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
                              'PEACE',
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.greyDarkColor
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '0:00/km',
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
                    height: 2,
                  ),
                  Divider(
                    color: AppColors.greyOpacityColor,
                    thickness: 1.3,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'PERSONALIZA LA RUTA',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Nombre',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'Título de la ruta',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.greyColor
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: AppColors.greyOpacityColor,
                    thickness: 1.3,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 7,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/explorar_ubicaciones_message_icon.png'
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        'Agregar fotografías',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 11
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: AppColors.greyOpacityColor,
                    thickness: 1.3,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dificultad',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Selecciona un nivel',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 11
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/bottom_icon.png'
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: AppColors.greyOpacityColor,
                    thickness: 1.3,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Lugar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Selecciona un lugar',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 11
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/bottom_icon.png'
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: AppColors.greyOpacityColor,
                    thickness: 1.3,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Notas',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Agrega notas',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 11
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                        },
                        color: AppColors.redColor,
                        textColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 33),
                        child: const Text('Ingresar', style: TextStyle(fontSize: 17, color: Colors.white)),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.red,
                            width: 0),
                          borderRadius: BorderRadius.circular(0)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomFixedLabel()
        ],
      ),
    );
  }
}