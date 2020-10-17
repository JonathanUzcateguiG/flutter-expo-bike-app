import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> isSignedIn() async {
    bool signedIn;

    signedIn = await _googleSignIn.isSignedIn();

    if (signedIn) {
      return true;
    } else {
      return false;
    }
  }
}
