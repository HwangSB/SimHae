import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signInWithGoogle().whenComplete(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return FirstScreen();
          },
        ),
      );
    },);
    
    return Center(
        child: Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Google Login'),
          onPressed: () {},
        )
      ],
    ));
  }
}

class FirstScreen extends StatelessWidget {
  //로그인에 성공하면 화면에 뜰 ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue[100]),
    );
  }
}

Future<String> signInWithGoogle() async {
  //사용자가 로그인할때 찾아서 사용자를 반환해준다.
  final GoogleSignInAccount googleSignInAccount =
      await googleSignIn.signIn(); //오류

  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $user';
}

void signOutGoogle() async {
  //사용자가 로그아웃
  await googleSignIn.signOut();

  print("User Sign Out");
}
