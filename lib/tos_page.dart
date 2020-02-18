import 'package:flutter/material.dart';

class TosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            ShadowedWave(
              child: Container(
                color: Color(0xFFCCF1D9),
              ),
              height: 320.0,
              strength: 100.0,
            ),
            ShadowedWave(
              child: Container(
                color: Color(0xFF8CDDD5),
              ),
              height: 288.0,
              strength: 100.0,
            ),
            Positioned(
              left: 16,
              child: SafeArea(
                child: IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned.fill(
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Text(
                      '이용약관',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 26,
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
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: false,
                                        onChanged: (state) {},
                                      ),
                                      Text(
                                        '인터넷 명예훼손',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: MaterialButton(
                                      child: Text(
                                        '전문 보기',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                indent: 8.0,
                                endIndent: 8.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: false,
                                        onChanged: (state) {},
                                      ),
                                      Text(
                                        '사이버 모욕죄',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: MaterialButton(
                                      child: Text(
                                        '전문 보기',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                indent: 8.0,
                                endIndent: 8.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: false,
                                        onChanged: (state) {},
                                      ),
                                      Text(
                                        '컴퓨터 범죄 (형법)',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: MaterialButton(
                                      child: Text(
                                        '전문 보기',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28.0,
                        vertical: 32.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: const Color(0xFFAEE6DD),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                    fontFamily: 'MapoFlowerIsland',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShadowedWave extends StatelessWidget {
  final Widget child;
  final double height;
  final double strength;

  ShadowedWave(
      {@required this.child, @required this.height, @required this.strength});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(
        clipper: WaveClipper(height: height, strength: strength),
      ),
      child: ClipPath(
        child: child,
        clipper: WaveClipper(height: height, strength: strength),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final CustomClipper<Path> clipper;

  WavePainter({@required this.clipper});
  Shadow shadow =
      Shadow(blurRadius: 6.0, offset: Offset(0, 3.0), color: Color(0x29000000));

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WaveClipper extends CustomClipper<Path> {
  double height = 0.0;
  double strength = 0.0;

  WaveClipper({@required this.height, @required this.strength});

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, height - strength / 2.0);

    var firstControlPoint = Offset(size.width / 4.0, height - strength);
    var firstGivenPoint = Offset(size.width / 2.0, height - strength / 2.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstGivenPoint.dx, firstGivenPoint.dy);

    var secondControlPoint = Offset(size.width - size.width / 4.0, height);
    var secondGivenPoint = Offset(size.width, height - strength / 2.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondGivenPoint.dx, secondGivenPoint.dy);

    path.lineTo(size.width, height - strength / 2.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
