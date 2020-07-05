import 'dart:async';
import 'package:flutter/material.dart';
import 'package:expo_bike/services/storageservice.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: StorageService.getSplashLogo(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          new Timer(new Duration(seconds: 5), () {
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
          });
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    snapshot.data,
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                  )
              ],),
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
      }
    );
    
  }
}