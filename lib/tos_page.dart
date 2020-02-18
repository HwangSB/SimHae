import 'package:flutter/material.dart';

class TosPage extends StatelessWidget {
  var t = [
    {
      '인터넷 명예훼손':
          '이용자는 명예훼손 등 타인의 권리를 침해하는 정보를 정보통신망에 유통시켜서는 안 됩니다(규제「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제44조제1항). ※ “이용자”란 정보통신서비스 제공자가 제공하는 정보통신서비스를 이용하는 사람을 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제4호). ※ “정보통신망”이란 전기통신설비를 이용하거나 전기통신설비와 컴퓨터 및 컴퓨터의 이용기술을 활용하여 정보를 수집·가공·저장·검색·송신 또는 수신하는 정보통신체제를 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제1호). ‘전기통신설비’란 유선·무선·광선 및 기타의 전자적 방식에 의하여 부호·문언·음향 또는 영상 - 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 사실을 드러내어 다른 사람의 명예를 훼손한 자는 3년 이하의 징역 또는 3천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제1항). ㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반해 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항). - 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 거짓의 사실을 드러내어 다른 사람의 명예를 훼손한 자는 7년 이하의 징역, 10년 이하의 자격정지 또는 5천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제2항). ㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반하여 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).',
      '사이버 모욕죄': '',
      '컴퓨터 범죄 (형법)': '',
    }
  ];

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
                                        onChanged: null,
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
                                        onChanged: null,
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
                                        onChanged: null,
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
