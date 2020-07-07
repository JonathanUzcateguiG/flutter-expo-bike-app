import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService extends ChangeNotifier {
  static final ref = FirebaseStorage.instance.ref();

  Map<String, String> logoList;

  Map<String, String> get getLogoList => logoList;

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

  static Future<String> getBottomBarImage() async {
    return await ref.child('images').child('assets').child('bottombar_image.png').getDownloadURL();
  }

  static Future<String> getRegisterFirstBikeImage() async {
    return await ref.child('images').child('assets').child('register_first_bike.png').getDownloadURL();
  }

  static Future<String> getRegisterFirstTriImage() async {
    return await ref.child('images').child('assets').child('register_first_tri.png').getDownloadURL();
  }

  static Future<String> getRegisterFirstTrailImage() async {
    return await ref.child('images').child('assets').child('register_first_trail.png').getDownloadURL();
  }

  static Future<String> getAccountLogo() async {
    return await ref.child('images').child('assets').child('account_logo.png').getDownloadURL();
  }

  Future<String> getProfileAvatar(String fileName) async {
    var url = await ref.child('images').child('uploads').child('avatar').child(fileName).getDownloadURL();

    logoList['profile_avatar'] = url;

    notifyListeners();
  }
}