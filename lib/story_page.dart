import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'story_detail_page.dart';
import 'animated_wave.dart';
import 'dart:math';

class StoryPage extends StatefulWidget {
  StoryPage({Key key}) : super(key: key);

  @override
  StoryPageState createState() => StoryPageState();
}

class StoryPageState extends State<StoryPage> {
  double cumulativeValue = 0.0;
  double storyPageOpacity = 1.0;
  double storyDetailPageOpacity = 0.0;
  ScrollPhysics scrollPhysics = BouncingScrollPhysics();
  double paddingTop = 350.0;
  double waveHeight = 130.0;
  int cardUpHeight = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedWave(
                color: Colors.blue.withAlpha(30),
                height: waveHeight,
                strength: 100,
                speed: 1.0,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedWave(
                color: Colors.cyan.withAlpha(30),
                height: waveHeight,
                strength: 80,
                speed: 0.9,
                offset: pi,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedWave(
                color: Colors.lightBlue.withAlpha(30),
                height: waveHeight,
                strength: 120,
                speed: 1.2,
                offset: pi / 2,
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, right: 16),
                      child: Opacity(
                        opacity: storyPageOpacity,
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: FloatingActionButton(
                            backgroundColor: Colors.lightBlue,
                            child: Icon(Icons.person),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Opacity(
                    opacity: storyPageOpacity,
                    child: PageView(
                      physics: scrollPhysics,
                      controller: PageController(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 32),
                          child: Text(
                            '유도 문구를\n넣을 생각입니다.1',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 32),
                          child: Text(
                            '유도 문구를\n넣을 생각입니다.2',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: paddingTop),
                child: Text(
                  '"사연을 넣을 생각입니다."',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: storyDetailPageOpacity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 32.0, top: 128.0, right: 32.0, bottom: 32.0),
                child: Card(
                  child: Center(
                    child: Text('hello'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      onPanStart: (details) {
        cumulativeValue = 0.0;
      },
      onPanUpdate: (details) {
        setState(() {
          cumulativeValue += details.delta.dy;

          storyPageOpacity += details.delta.dy / 150.0;
          if (storyPageOpacity < 0.0) storyPageOpacity = 0.0;
          if (storyPageOpacity > 1.0) storyPageOpacity = 1.0;
          if (storyPageOpacity <= 0.0)
            scrollPhysics = NeverScrollableScrollPhysics();
          else
            scrollPhysics = BouncingScrollPhysics();

          paddingTop += details.delta.dy / 300.0 * 350.0;
          if (paddingTop < 50.0) paddingTop = 50.0;
          if (paddingTop > 350.0) paddingTop = 350.0;

          waveHeight -= details.delta.dy / 300.0 * 800.0;
          if (waveHeight > 800.0) waveHeight = 800.0;
          if (waveHeight < 130.0) waveHeight = 130.0;

          if (cumulativeValue < -100 || cumulativeValue > 0) {
            storyDetailPageOpacity -= details.delta.dy / 150.0;
            if (storyDetailPageOpacity < 0.0) storyDetailPageOpacity = 0.0;
            if (storyDetailPageOpacity > 1.0) storyDetailPageOpacity = 1.0;
          }
        });
      },
    );
  }
}

/*Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return StoryDetailPage();
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}*/

// class StoryPage extends StatefulWidget {
//   StoryPage({Key key}) : super(key: key);

//   @override
//   StoryPageState createState() => StoryPageState();
// }

// class StoryPageState extends State<StoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: ValueKey(''),
//       direction: DismissDirection.startToEnd,
//       onDismissed: (DismissDirection direction) {},
//       background: StoryPage(),
//       child: Center(
//         child: Text(
//           '새로운 글을 가져오는 중입니다.',
//         ),
//       ),
//     );
//   }
// }
