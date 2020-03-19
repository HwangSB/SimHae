import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:solution_challenge/global_user_account.dart';
import 'package:solution_challenge/settings_database.dart';
import 'package:solution_challenge/pages/story/story_page.dart';
import 'package:solution_challenge/pages/terms_of_service/tos_page.dart';
import 'package:solution_challenge/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  Firestore firestore = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/logo_lg.png'),
                width: 200.0,
                height: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Stack(
                  children: <Widget>[
                    Text(
                      '심해(心海)',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 24,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.3
                          ..color = Color(0xFF707070),
                      ),
                    ),
                    Text(
                      '심해(心海)',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 24,
                        color: Color(0x91191919),
                        shadows: [
                          Shadow(
                            blurRadius: 6.0,
                            offset: Offset(3.0, 3.0),
                            color: Color(0xFF81F8F0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Stack(
                  children: <Widget>[
                    Text(
                      '우리의 마음이 머무는 바다.',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 18,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.3
                          ..color = Color(0xFF707070),
                      ),
                    ),
                    Text(
                      '우리의 마음이 머무는 바다.',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 18,
                        color: Color(0x91191919),
                        shadows: [
                          Shadow(
                            blurRadius: 6.0,
                            offset: Offset(3.0, 3.0),
                            color: Color(0xFF81F8F0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _startTimer() async {
    var _duration = Duration(seconds: 1);
    return Timer(_duration, _navigatePage);
  }

  _navigatePage() async {
    bool isSignedIn = await _checkSignedIn();
    if (!isSignedIn) {
      Navigator.pushReplacement(context, FadePageRoute(page: LoginPage()));
      return;
    }

    bool isAcceptAllTos = await _checkAllTosAccept();
    if (!isAcceptAllTos) {
      Navigator.pushReplacement(context, FadePageRoute(page: TosPage()));
      return;
    }

    Navigator.pushReplacement(context, FadePageRoute(page: StoryPage()));
  }

  Future<bool> _checkSignedIn() async {
    GoogleSignIn googleSignIn = new GoogleSignIn();
    bool isSignedIn = await googleSignIn.isSignedIn();
    if (isSignedIn) {
      GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signInSilently(suppressErrors: false);
      if (googleSignInAccount != null) {
        await GlobalUserAccount.instance.connect(googleSignInAccount);
        final snapshot = await Firestore.instance
            .collection('Users')
            .document(GlobalUserAccount.instance.uid)
            .get();
        if (snapshot == null || !snapshot.exists) {
          Firestore.instance
              .collection('Users')
              .document(GlobalUserAccount.instance.uid)
              .setData({'hasStory': false}, merge: true);
        }
      }
      return true;
    }
    return false;
  }

  Future<bool> _checkAllTosAccept() async {
    SettingsDatabase settings = SettingsDatabase();
    String acceptAllTos = await settings.valueOf('accept_all_tos');
    return acceptAllTos == 'true';
  }
}

class FadePageRoute extends PageRouteBuilder {
  final Widget page;

  FadePageRoute({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
