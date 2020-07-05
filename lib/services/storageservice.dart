import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService extends ChangeNotifier {
  static final ref = FirebaseStorage.instance.ref();

  static Future<String> getSplashLogo() async {
    return await ref.child('images').child('assets').child('splash_logo.png').getDownloadURL();
  }

  static Future<String> getLoginLogo() async {
    return await ref.child('images').child('assets').child('login_logo.png').getDownloadURL();
  }

  static Future<String> getSecondRegisterLogo() async {
    return await ref.child('images').child('assets').child('register_second_logo.png').getDownloadURL();
  }

  static Future<String> getMainSplashLogo() async {
    return await ref.child('images').child('assets').child('main_splash_logo.png').getDownloadURL();
  }
}