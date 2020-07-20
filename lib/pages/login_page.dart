import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:solution_challenge/generated/l10n.dart';
import 'package:solution_challenge/global_user_account.dart';
import 'package:solution_challenge/settings_database.dart';
import 'package:solution_challenge/pages/terms_of_service/tos_page.dart';

class LoginPage extends StatelessWidget {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
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
                        S.of(context).appTitle,
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
                        S.of(context).appTitle,
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
                        S.of(context).appSubTitle,
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
                        S.of(context).appSubTitle,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: CupertinoButton(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xFF9DD9D8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      S.of(context).start,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 16,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                            color: Color(0x29000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onPressed: () => _navigatePage(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  _navigatePage(BuildContext context) async {
    GoogleSignInAccount googleSignInAccount;

    try {
      googleSignInAccount = await googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
    
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

    if (googleSignInAccount != null) {
      bool isAcceptAllTos = await _checkAllTosAccept();
      if (!isAcceptAllTos) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TosPage(),
          ),
        );
      }
      return;
    }
  }

  Future<bool> _checkAllTosAccept() async {
    SettingsDatabase settings = SettingsDatabase();
    String acceptAllTos = await settings.valueOf('accept_all_tos');
    return acceptAllTos == 'true';
  }
}
