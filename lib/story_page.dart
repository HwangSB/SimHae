import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:solution_challenge/animated_wave.dart';
import 'package:infinity_page_view/infinity_page_view.dart';
import 'package:solution_challenge/memorial_space_story_page.dart';
import 'package:solution_challenge/story_detail_page.dart';
import 'package:solution_challenge/my_page.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedWave(
              color: Color(0xB3F6FFFE),
              height: 250.0,
              strength: 50,
              speed: 1.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedWave(
              color: Color(0xE6F3FEFD),
              height: 240.0,
              strength: 50,
              speed: 1.3,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedWave(
              color: Color(0xE6C8F0D5),
              height: 210.0,
              strength: 40,
              speed: 0.9,
              offset: 3.14,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedWave(
              color: Color(0xB380C9F6),
              height: 180.0,
              strength: 60,
              speed: 1.2,
              offset: 1.67,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedWave(
              color: Color(0xB382CCC6),
              height: 180.0,
              strength: 60,
              speed: 1.2,
              offset: 1.0,
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/logo_sm.png'),
                            width: 68.0,
                            height: 68.0,
                          ),
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
                Flexible(
                  flex: 2,
                  child: PageView.builder(
                    controller: PageController(),
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
                  flex: 2,
                  child: InfinityPageView(
                    controller: InfinityPageController(initialPage: 0),
                    itemCount: 3,
                    itemBuilder: (builder, index) {
                      return OneLineStory();
                    },
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/hand_shake.png',
                      ),
                      height: 48.0,
                    ),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/ribbon.png',
                      ),
                      height: 48.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MemorialSpaceStoryPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Color(0xFF8CDDD5),
          size: 28.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class OneLineStory extends StatefulWidget {
  OneLineStory({Key key}) : super(key: key);

  @override
  _OneLineStoryState createState() => _OneLineStoryState();
}

class _OneLineStoryState extends State<OneLineStory> {
  final String title = '먼저 간 딸아이가 자꾸 꿈에 나오네요';
  final String detail =
      '언니 언니가 죽은 지 벌써 3개월이나 됐더라. 난 한달밖에 안된줄 알았어. 언니가 죽고 하루 만에 언니 방에 언니가 사놓고 한번도 못입어 본 옷더미들 언니가 마음에 안 들어했던 언니 방 가구들 언니 앨범 자격증증서 사진들까지 다 전부 갖다버리고 깨끗하게 치웠는데 유일 하게 컴퓨터에 옮겨져있는 언니사진들만은 못 지우겠어.\n 이제와서 내가 어떻게 무슨수로 그걸 지울수 가 있어 그걸 지우면 언닌 이제 이 세상에 없 었던 사람이 되어 흔적하나 없게 되는데... 기 억하는 사람도 없어지면 어쩌지? 나라도 기억 해야하는걸까 요즘은 언니가 존재했었는지도 가물가물하고 계속 기억을 되짚으며 언니 흔 적을 찾으며 헤매고 그렇게 살고있어...... 우리집 강아지 호두는 언니를 가장 잘 따랐 는데 호두는 언니가 죽은걸 옆에서 지켜봤을 텐데 언니가 죽었다고 알고있을까? 내가 좋아 하는 음식이 뭔지도 모르겠어. 딸기케이크 치 즈케이크 생크림 모찌롤 다 언니가 좋아해서 내가 따라 좋아한 음식이잖아.';
  int randomValue = 0;

  @override
  void initState() {
    super.initState();
    randomValue = Random().nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0.0),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryDetailPage(
              title: title,
              detail: detail,
            ),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(
                  'assets/images/left_quote.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 4.0,
                  top: 16.0,
                  right: 4.0,
                ),
                child: Text(
                  '먼저 간 딸아이가 자꾸 꿈에 나오네요$randomValue',
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
                    'assets/images/right_quote.png',
                  ),
                ),
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
  }
}
