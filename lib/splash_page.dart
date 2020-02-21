import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
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
