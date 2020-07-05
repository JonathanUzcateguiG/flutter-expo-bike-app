import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var ref = FirebaseStorage.instance.ref();
  var imageUrl;

  Future<String> getImageUrl() async {
    return await ref.child('images').child('assets').child('splash_logo.png').getDownloadURL();
  }

  @override
  void initState() {
    super.initState();

    new Timer(new Duration(seconds: 100000000), () {
      Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
    });
  }

  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getImageUrl(),
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