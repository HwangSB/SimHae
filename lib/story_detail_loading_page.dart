import 'dart:async';

import 'package:flutter/Material.dart';
import 'package:solution_challenge/shadowed_wave.dart';
import 'package:solution_challenge/story_detail_page.dart';

class StoryDetailLoadingPage extends StatefulWidget {
  final String title;
  final String detail;
  final Color color;

  StoryDetailLoadingPage({Key key, @required this.title, @required this.detail, @required this.color})
      : super(key: key);

  @override
  _StoryDetailLoadingPageState createState() => _StoryDetailLoadingPageState();
}

class _StoryDetailLoadingPageState extends State<StoryDetailLoadingPage> {
  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 172.0),
                child: Text(
                  '편지가 당신에게 오고 있습니다',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'MapoFlowerIsland',
                    color: Color(0xFF1F5550),
                    shadows: [
                      Shadow(
                        blurRadius: 6.0,
                        offset: Offset(3.0, 3.0),
                        color: Color(0xFF91D0CB),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ShadowedWave(
              height: 360.0,
              strength: 70.0,
              reverse: true,
              child: Container(
                height: 360.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFC9EED6),
                      Color(0xFFB6E8D5),
                      Color(0xFF92D1CC),
                      Color(0xFF81C6C8),
                      Color(0xFF77B8B9),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50.0,
            top: 460.0,
            child: Image(
              image:
                  AssetImage('assets/images/story_detail_loading_bottle.png'),
            ),
          ),
        ],
      ),
    );
  }

  _startTimer() async {
    var _duration = Duration(seconds: 1);
    return Timer(_duration, _navigatePage);
  }

  _navigatePage() async {
    Navigator.pushReplacement(
      context,
      FadePageRoute(
        page: StoryDetailPage(title: widget.title, detail: widget.detail, color: widget.color),
      ),
    );
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
