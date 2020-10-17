import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';

class FavoriteScreen extends StatefulWidget {

  final Function(int) onItemPressed;

  FavoriteScreen({@required this.onItemPressed});

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
  with AutomaticKeepAliveClientMixin {

  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Perfil',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 35),
                            child: GestureDetector(
                            onTap: () {
                              widget.onItemPressed(5);
                            },
                            child: Image(
                              image: AssetImage(
                                'assets/images/settings_red_icon.png'
                              )
                            ),
                          ),
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
                      Image(
                        image: AssetImage(
                          'assets/images/crown_red.png',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/images/user_avatar.png',
                        ),
                      )
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
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(
                                          'assets/images/equipo_icon.png',
                                        ),
                                        color: AppColors.greyBlackColor,
                                        height: 35,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Equipo',
                                        style: TextStyle(
                                          color: AppColors.greyDarkColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/vertical_line.png'
                                  ),
                                  height: 30,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(
                                          'assets/images/eventos_icon.png',
                                        ),
                                        color: AppColors.greyBlackColor,
                                        height: 35,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Eventos',
                                        style: TextStyle(
                                          color: AppColors.greyDarkColor,
                                          fontSize: 11
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/vertical_line.png'
                                  ),
                                  height: 30,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(
                                          'assets/images/estadisticas_icon.png',
                                        ),
                                        color: AppColors.greyBlackColor,
                                        height: 35,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Estadísticas',
                                        style: TextStyle(
                                          color: AppColors.greyDarkColor,
                                          fontSize: 11
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/vertical_line.png'
                                  ),
                                  height: 30,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(
                                          'assets/images/amigos_icon.png',
                                        ),
                                        color: AppColors.greyBlackColor,
                                        height: 35,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Amigos',
                                        style: TextStyle(
                                          color: AppColors.greyDarkColor,
                                          fontSize: 11
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        height: 150,
                        child: new Material(
                          borderRadius: BorderRadius.circular(16.0),
                          elevation: 6.0,
                          child: new Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(bottom: 10),
                        child: new Material(
                          borderRadius: BorderRadius.circular(16.0),
                          elevation: 6.0,
                          child: new Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 10,
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                    'assets/images/favoritos_icon.png'
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Favoritos',
                                                  style: TextStyle(
                                                    color: AppColors.greyDarkerColor,
                                                    fontSize: 12
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                    'assets/images/right_icon.png'
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Divider(
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: EdgeInsets.fromLTRB(15, 0, 15, 7),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 10,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                    'assets/images/splash_logo.png'
                                                  ),
                                                  height: 29,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'VIP',
                                                  style: TextStyle(
                                                    color: AppColors.greyDarkerColor,
                                                    fontSize: 15
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                    Navigator.of(context).pushNamedAndRemoveUntil('/mainDialogScreen', (Route<dynamic> route) => false);
                                                  },
                                                  child: Image(
                                                    image: AssetImage(
                                                      'assets/images/right_icon.png'
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Miembro desde Junio 2020',
                        style: TextStyle(
                          color: AppColors.greyBlackerColor,
                          fontSize: 11
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}