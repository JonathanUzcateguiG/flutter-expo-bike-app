import 'package:flutter/material.dart';
import 'package:expo_bike/widgets/MenuTopHeader.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/widgets/customSwitch.dart';
import 'package:expo_bike/utils/colors.dart';

class UserSettingScreen extends StatefulWidget {

  // final VoidCallback onItemTaped;
  final Function(int) onItemPressed;

  UserSettingScreen({@required this.onItemPressed});

  _UserSettingScreenState createState() => _UserSettingScreenState();
}

class _UserSettingScreenState extends State<UserSettingScreen> {
  bool notification_value = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  MenuTopHeader(
                    title: 'Ajustes',
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(
                            'assets/images/user_avatar.png',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 35, top: 25),
                            child: GestureDetector(
                            onTap: () {
                              widget.onItemPressed(4);
                            },
                            child: Image(
                              image: AssetImage(
                                'assets/images/left_icon.png'
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Nombre',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Correo electrónico',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 2),
                    child: new Material(
                      elevation: 3.0,
                      child: new Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(36.75, 10, 15, 0),
                                        child: Row(
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage(
                                                'assets/images/notification_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              width: 16.25,
                                            ),
                                            Text(
                                              'Notificaciones',
                                              style: TextStyle(
                                                fontSize: 12
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  CustomSwitch(
                                                    value: notification_value,
                                                    onChanged: (bool val){
                                                      setState(() {
                                                        notification_value = val;
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 36.75),
                                        child: Divider(
                                          color: AppColors.greyOverOpacityColor,
                                          thickness: 1.3,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(36.75, 4, 0, 0),
                                        child: Row(
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage(
                                                'assets/images/message_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              width: 16.25,
                                            ),
                                            Text(
                                              'Mensajes',
                                              style: TextStyle(
                                                fontSize: 12
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 20),
                                                    child: GestureDetector(
                                                      onTap: () {},
                                                      child: Image(
                                                        image: AssetImage(
                                                          'assets/images/right_icon.png'
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 36.75),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: (
                                                    Column(
                                                      children: <Widget>[
                                                        Divider(
                                                          color: AppColors.greyOverOpacityColor,
                                                          thickness: 1.3,
                                                        ),
                                                      ],
                                                    )
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(36.75, 4, 0, 0),
                                        child: Row(
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage(
                                                'assets/images/star_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text(
                                              'Valor esta aplicación',
                                              style: TextStyle(
                                                fontSize: 12
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 20),
                                                    child: GestureDetector(
                                                      onTap: () {},
                                                      child: Image(
                                                        image: AssetImage(
                                                          'assets/images/right_icon.png'
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 36.75),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: (
                                                    Column(
                                                      children: <Widget>[
                                                        Divider(
                                                          color: AppColors.greyOverOpacityColor,
                                                          thickness: 1.3,
                                                        ),
                                                      ],
                                                    )
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(36.75, 4, 0, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                            Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
                                          },
                                          child: Row(
                                            children: <Widget>[
                                              Image(
                                                image: AssetImage(
                                                  'assets/images/sign_out_icon.png',
                                                ),
                                              ),
                                              SizedBox(
                                                width: 25.25,
                                              ),
                                              Text(
                                                'Cerrar sesión',
                                                style: TextStyle(
                                                  fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      )
                    )
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '2020 ExpoBike. Derechos reservados',
                        style: TextStyle(
                          color: AppColors.greyBlackerColor,
                          fontSize: 10
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'version0.1',
                        style: TextStyle(
                          color: AppColors.greyBlackerColor,
                          fontSize: 8
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}