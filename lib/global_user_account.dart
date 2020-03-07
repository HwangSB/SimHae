import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GlobalUserAccount {
  GlobalUserAccount._privateConstructor();

  static final GlobalUserAccount _instance =
      GlobalUserAccount._privateConstructor();

  static GlobalUserAccount get instance => _instance;

  String _uid;

  String get uid => _uid;

  Future<void> connect(GoogleSignInAccount googleSignInAccount) async {
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    AuthResult authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);

    _uid = authResult.user.uid;
  }
}
