import 'package:flutter/material.dart';
import 'package:expo_bike/services/storageservice.dart';
import 'package:expo_bike/utils/colors.dart';

class RegisterFormFirstScreen extends StatefulWidget {
  RegisterFormFirstScreen({Key key}) : super(key: key);

  @override
  _RegisterFormFirstScreenState createState() => _RegisterFormFirstScreenState();
}

class _RegisterFormFirstScreenState extends State<RegisterFormFirstScreen> {
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
                        height: 100
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'REGISTRO EXITOSO !!',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.greyFirstColor
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ahora puede ingresar a tu Aplicación',
                            style: TextStyle(
                              color: AppColors.greyFirstColor,
                              fontSize: 15
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 170,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width - 50,
                        height: 60,
                        child: RaisedButton(
                          onPressed: () {
                            //this.onGoogleSignIn(context);
                            Navigator.of(context).pushNamed('/register_form_second');
                          },
                          color: AppColors.redColor,
                          textColor: Colors.white,
                          child: const Text('INGRESAR ', style: TextStyle(fontSize: 17, color: Colors.white)),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.red,
                              width: 0),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ),
                  ]
                ),
              ),
            ),
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