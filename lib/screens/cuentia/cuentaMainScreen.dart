import 'package:expo_bike/services/storageservice.dart';
import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';

class CuentaMainScreen extends StatefulWidget {

  final Function(int) onItemPressed;

  CuentaMainScreen({@required this.onItemPressed});

  @override
  _CuentaMainScreenState createState() => _CuentaMainScreenState();
}

class _CuentaMainScreenState extends State<CuentaMainScreen>
  with AutomaticKeepAliveClientMixin {

  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
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
                        'Miembro desde Junio 2020',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 220,
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
                                        padding: EdgeInsets.only(left: 36.75, top: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            widget.onItemPressed(11);
                                          },
                                          child: Row(
                                            children: <Widget>[
                                              Image(
                                                image: AssetImage(
                                                  'assets/images/cuenta_icon.png',
                                                ),
                                              ),
                                              SizedBox(
                                                width: 16.25,
                                              ),
                                              Text(
                                                'Mis Datos',
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
                                                'assets/images/favoritos_icon.png',
                                              ),
                                            ),
                                            SizedBox(
                                              width: 16.25,
                                            ),
                                            Text(
                                              'Favoritos',
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
                                            FutureBuilder(
                                              future: StorageService.getAccountLogo(),
                                              builder: (context, AsyncSnapshot<String> accountsnapshot) {
                                                if (accountsnapshot.hasData) {
                                                  return Image(
                                                    image: NetworkImage(
                                                      accountsnapshot.data
                                                    ),
                                                  );
                                                } else {
                                                  return Text('');
                                                }
                                              },
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'VIP',
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
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      )
                    )
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