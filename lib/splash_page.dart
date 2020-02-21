import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/tos_page.dart';
import 'package:solution_challenge/main_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTimer() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.pushReplacement(context, FadePageRoute(page: MainPage()));
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
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
              Stack(
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
            ],
          ),
        ),
      ),
    );
  }

  outlineShadow(double size) {
    return [
      Shadow(
          offset: Offset(-(size / 2.0), -(size / 2.0)),
          color: Color(0xFF707070)),
      Shadow(
          offset: Offset((size / 2.0), -(size / 2.0)),
          color: Color(0xFF707070)),
      Shadow(
          offset: Offset((size / 2.0), (size / 2.0)), color: Color(0xFF707070)),
      Shadow(
          offset: Offset(-(size / 2.0), (size / 2.0)),
          color: Color(0xFF707070)),
    ];
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
