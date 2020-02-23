import 'dart:async';
import 'package:flutter/material.dart';
import 'package:solution_challenge/my_page.dart';

class StoryPage extends StatefulWidget {
  final double value;

  StoryPage({this.value});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 10), (timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkResponse(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF8CDDD5),
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
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: PageView.builder(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(),
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
                                    '유도 문구를\n넣을 생각입니다.${index % 5}',
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
                                    '유도 문구를\n넣을 생각입니다.${index % 5}',
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
                  physics: ClampingScrollPhysics(),
                  controller: PageController(),
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
      ],
    );
  }
}
