import 'package:expo_bike/screens/mainDialogScreen.dart';
import 'package:expo_bike/services/storageservice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _handleSignIn() async {
    FirebaseUser user;

    bool isSignedIn = await _googleSignIn.isSignedIn();

    if (isSignedIn) {
      user = await _auth.currentUser();
    } else {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
                                                                        idToken: googleAuth.idToken,
                                                                        accessToken: googleAuth.accessToken);

      user = (await _auth.signInWithCredential(credential)).user;
    }

    return user;
  }

  void onGoogleSignIn(BuildContext context) async {
    FirebaseUser user = await _handleSignIn();
    print(user);
    // Navigator.push(context,
    //               MaterialPageRoute(
    //                 builder: (context) => MainDialogScreen(user, _googleSignIn)
    //               ));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getLoginLogo(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: SingleChildScrollView(
              child: new Padding(
                padding: EdgeInsets.fromLTRB(44, 100, 44, 100),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          snapshot.data
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: new Material(
                                    borderRadius: BorderRadius.circular(16.0),
                                    elevation: 6.0,
                                    child: new Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)
                                      ),
                                      child: new Form(
                                        key: formKey,
                                        child: new Container(
                                          padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                                          child: new Column(children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                  children: <Widget>[
                                                    new Tab(
                                                      child: Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: Image(
                                                          image: AssetImage('assets/images/user_icon.png'),
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    keyboardType: TextInputType.text,
                                                    decoration: InputDecoration(
                                                      enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: AppColors.greyOpacityColor),
                                                      ),
                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: AppColors.greyOpacityColor
                                                        ),
                                                      ),
                                                      contentPadding: EdgeInsets.only(top: 20.0),
                                                      hintText: 'Correo',
                                                      hintStyle: TextStyle(color: AppColors.greyOpacityColor, fontFamily: 'Quicksand', fontSize: 21)
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                  children: <Widget>[
                                                    new Tab(
                                                      child: Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: Image(
                                                          image: AssetImage('assets/images/security_icon.png'),
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    keyboardType: TextInputType.text,
                                                    decoration: InputDecoration(
                                                      enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: AppColors.greyOpacityColor),
                                                      ),
                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: AppColors.greyOpacityColor
                                                        ),
                                                      ),
                                                      contentPadding: EdgeInsets.only(top: 20.0),
                                                      hintText: 'Contrasena',
                                                      hintStyle: TextStyle(color: AppColors.greyColor, fontFamily: 'Quicksand', fontSize: 21),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 35,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                RaisedButton(
                                                  onPressed: () {
                                                    //this.onGoogleSignIn(context);
                                                    Navigator.of(context).pushNamedAndRemoveUntil('/mainDialogScreen', (Route<dynamic> route) => false);
                                                  },
                                                  color: AppColors.redColor,
                                                  textColor: Colors.white,
                                                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 33),
                                                  child: const Text('Ingresar', style: TextStyle(fontSize: 17, color: Colors.white)),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Colors.red,
                                                      width: 0),
                                                    borderRadius: BorderRadius.circular(5)
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage('assets/images/facebook_icon.png'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Registrarme con Facebook',
                                          style: TextStyle(
                                            color: AppColors.greyBlackColor,
                                            fontSize: 15
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage('assets/images/google_icon.png'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          this.onGoogleSignIn(context);
                                        },
                                        child: Text(
                                          '   Registrarme con Gmail     ',
                                          style: TextStyle(
                                            color: AppColors.greyBlackColor,
                                            fontSize: 15
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '¿No tienes cuenta?',
                                    style: TextStyle(
                                      color: AppColors.greyBlackColor,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '¡Regístrate!',
                                    style: TextStyle(
                                      color: AppColors.greyBlackColor,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}