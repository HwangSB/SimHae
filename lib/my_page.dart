import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/delete_story_page.dart';
import 'package:solution_challenge/story_detail_page.dart';
import 'package:solution_challenge/settings_page.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ShadowedWave(
            height: 350.0,
            strength: 70.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFCCF1D9),
                    Color(0xFF8BDAD3),
                    Color(0xFF83CEC8),
                    Color(0xFF7DC4BF),
                    Color(0xFF75BAB5),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          iconSize: 28.0,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkResponse(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingsPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x29000000),
                                  blurRadius: 6.0,
                                  offset: Offset(0.0, 3.0),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Color(0xFF8CD4D5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '나의 바다',
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 32,
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
                    ],
                  ),
                ),
                Divider(
                  indent: 128.0,
                  endIndent: 128.0,
                  color: Color(0x339D9D9D),
                  thickness: 1.5,
                ),
                RichText(
                  text: TextSpan(
                    text: '오늘 \'',
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 16,
                      color: Color(0xFF777A7A),
                      shadows: [
                        Shadow(
                          blurRadius: 6.0,
                          offset: Offset(0.0, 3.0),
                          color: Color(0x29000000),
                        ),
                      ],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '당신의 바다',
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
                      TextSpan(text: '\' 는 무슨 색인가요?'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0),
            child: Column(
              children: <Widget>[
                CupertinoButton(
                  padding: EdgeInsets.only(left: 20.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeleteStoryPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        '건너간 편지',
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 18,
                          color: Color(0xFF81CCC6),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Color(0xFF81CCC6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 360.0),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(16.0),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return CupertinoButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Scaffold(
                              backgroundColor: Color(0xFF8CDDD5),
                              body: StoryDetailPage(
                                value: 1.0,
                              ),
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x29000000),
                                blurRadius: 6.0,
                                offset: Offset(0.0, 3.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                          'assets/images/left_quote.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 4.0,
                                        top: 16.0,
                                        right: 4.0,
                                      ),
                                      child: Text(
                                        '먼저 간 딸아이가 자꾸 꿈에 나오네요',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                          fontSize: 16,
                                          color: Color(0xFF3B514F),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/right_quote.png'),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  indent: 48.0,
                                  endIndent: 48.0,
                                  color: Color(0xFF707070),
                                  thickness: 0.6,
                                  height: 16.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 360,
                height: 16.0,
                width: 500,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
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
  final Shadow shadow = Shadow(
    blurRadius: 6.0,
    offset: Offset(0, 3.0),
    color: Color(0x29000000),
  );

  WavePainter({@required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  @override
  bool hitTest(Offset position) {
    return false;
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
