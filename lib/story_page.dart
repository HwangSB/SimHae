import 'dart:async';
import 'package:solution_challenge/animated_wave.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  final double value;

  StoryPage({this.value});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int _currentPage = 0;
  int _pageCount = 5;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 8), (timer) {
      if (widget.value < 1.0) {
        if (_currentPage < _pageCount) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFB9E9E4)
            .withOpacity(widget.value == null ? 0.0 : widget.value),
        child: Stack(
          children: <Widget>[
            SafeArea(
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 16, right: 16),
                              child: InkResponse(
                                onTap: () {},
                                child: Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8CDDD5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: PageView.builder(
                      controller: _pageController,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _pageCount,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 32),
                                  child: Stack(
                                    children: <Widget>[
                                      Text(
                                        '유도 문구를\n넣을 생각입니다.$index',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                          fontSize: 26,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 0.3
                                            ..color = Color(0xFF707070),
                                        ),
                                      ),
                                      Text(
                                        '유도 문구를\n넣을 생각입니다.$index',
                                        style: TextStyle(
                                          fontFamily: 'MapoFlowerIsland',
                                          fontSize: 26,
                                          color: Color(0xFF3B514F),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: PageView.builder(
                      controller: PageController(),
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 64.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          'assets/images/left_quote.png')),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, top: 16.0, right: 4.0),
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
                                            'assets/images/right_quote.png')),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 64.0,
                                endIndent: 64.0,
                                color: Color(0xFF707070),
                                thickness: 0.6,
                                height: 16.0,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedWave(
                color: Colors.cyan.withOpacity(0.3),
                height: 130.0,
                strength: 100,
                speed: 1.0,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedWave(
                color: Colors.lightBlue.withOpacity(0.3),
                height: 130.0,
                strength: 80,
                speed: 0.9,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedWave(
                color: Colors.blue.withOpacity(0.3),
                height: 130.0,
                strength: 120,
                speed: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
