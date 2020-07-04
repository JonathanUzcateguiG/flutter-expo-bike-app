import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainDialogScreen extends StatelessWidget {

  // GoogleSignIn _googleSignIn;
  // FirebaseUser _user;

  // MainDialogScreen(FirebaseUser user, GoogleSignIn signIn) {
  //   _user = user;
  //   _googleSignIn = signIn;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil('/mainSplashScreen', (Route<dynamic> route) => false);
                      },
                      child: Image(
                        image: AssetImage('assets/images/close_icon.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image(
                          width: 64,
                          height: 100,
                          image: AssetImage('assets/images/bicycle.png'),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'VIP',
                          style: TextStyle(
                            fontSize: 38
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            'ExpoBike te ofrece la posibilidad de obtener',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            'una cuenta VIP, con un mes de prueba gratis!',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:10,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 45, bottom: 15),
                        child: Image(
                          image: AssetImage('assets/images/check_icon.png'),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 45, bottom: 15),
                        child: Image(
                          image: AssetImage('assets/images/check_icon.png'),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 45, bottom: 15),
                        child: Image(
                          image: AssetImage('assets/images/check_icon.png'),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Image(
                          image: AssetImage('assets/images/check_icon.png'),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Divider(
                            color: AppColors.greyColor
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Selecciona un plan para iniciar tu mes de prueba. Disponible ',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 11
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'solamente para usuarios ExpoVIP. Después del mes de ',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 11
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'prueba, se te comenzará a cobrar. Podés cambiar o cancelar el ',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 11
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'plan en cualquier momento. ',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 11
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil('/mainSplashScreen', (Route<dynamic> route) => false);
                            },
                            color: AppColors.redColor,
                            textColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 33),
                            child: const Text('COMENZAR', style: TextStyle(fontSize: 17, color: Colors.white)),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.red,
                                width: 0),
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}