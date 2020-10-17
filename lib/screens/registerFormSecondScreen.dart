import 'package:flutter/material.dart';
import 'package:expo_bike/services/storageservice.dart';
import 'package:expo_bike/utils/colors.dart';

class RegisterFormSecondScreen extends StatefulWidget {
  RegisterFormSecondScreen({Key key}) : super(key: key);

  @override
  _RegisterFormSecondScreenState createState() => _RegisterFormSecondScreenState();
}

class _RegisterFormSecondScreenState extends State<RegisterFormSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getLoginLogo(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: SingleChildScrollView(
                    child: new Padding(
                      padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
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
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'REGISTRO',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.greyFirstColor
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'John Doe B',
                                hintStyle: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 19
                                ),
                                labelText: 'Full Name',
                                labelStyle: TextStyle(
                                  color: AppColors.blackThirdColor,
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '28/12/1999',
                                hintStyle: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 19
                                ),
                                labelText: 'Birth Day',
                                labelStyle: TextStyle(
                                  color: AppColors.blackThirdColor,
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Costa Rica',
                                hintStyle: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 19
                                ),
                                labelText: 'Country',
                                labelStyle: TextStyle(
                                  color: AppColors.blackThirdColor,
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'mimail@miserver.com',
                                hintStyle: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 19
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: AppColors.blackThirdColor,
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '+506 78901234',
                                hintStyle: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 19
                                ),
                                labelText: 'Phone Number',
                                labelStyle: TextStyle(
                                  color: AppColors.blackThirdColor,
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width - 50,
                            height: 60,
                            child: RaisedButton(
                              onPressed: () {
                                //this.onGoogleSignIn(context);
                                Navigator.of(context).pushNamedAndRemoveUntil('/mainSplashScreen', (Route<dynamic> route) => false);
                              },
                              color: AppColors.redColor,
                              textColor: Colors.white,
                              child: const Text('REGISTRARME ', style: TextStyle(fontSize: 17, color: Colors.white)),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.red,
                                  width: 0),
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  )
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(AppColors.redColor)
                ),
              ),
            ),
          );
        }
      },
    );
  }
}