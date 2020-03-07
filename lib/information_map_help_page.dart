import 'package:flutter/material.dart';
import 'package:solution_challenge/shadowed_wave.dart';

class InformationMapHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 280,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x3BE1E2E2),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '자조모임이 무엇인가요?',
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 18,
                                  color: Color(0xFF88CED1),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    '자조모임은 같은 아픔을 지닌 유족들이 모여 서로의 아픔을 공감하고 치유의 과정을 함께하는 모임입니다.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'MapoFlowerIsland',
                                      fontSize: 16,
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 52.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '자조모임 참여가 애도에 도움이 되나요?',
                                  style: TextStyle(
                                    fontFamily: 'MapoFlowerIsland',
                                    fontSize: 18,
                                    color: Color(0xFF88CED1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.0,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.0, 0.0),
                                    color: Color(0xFF707070)),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 34.0),
                              child: Text(
                                '“충분히 내 속에 있는 것을 꺼낼 수 있었어요.\n그동안 치밀어 올라왔던 화가 사라지고, 아들의 죽음을 좋은 기억으로 남기려고 노력하려구요.”',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 12,
                                  color: Color(0xFF707070),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.0, 0.0),
                                    color: Color(0xFF707070)),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 34.0),
                              child: Text(
                                '“자조모임에 참여하고 상실감과 우울감이 많이 줄었어요. 많이 우울했는데…지금은 하루하루 산다는 것이 굉장히 유쾌해요. 같이 모임한 분들이 긍정적인 생각을 가지고 계신 분들이라 이렇게 좋게 바뀐 것 같아 너무 감사해요.”',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 12,
                                  color: Color(0xFF707070),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '참고문헌 : 자살자 유가족의 자조모임 참여경험에 관한 연구\n- 박혜선, 이종익(2016.06.)',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 9,
                                  color: Color(0xFF707070),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 52.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '자조모임에 어떻게 참여하나요?',
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 18,
                                  color: Color(0xFF88CED1),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    '1577-0199 또는 해당 기관에 문의해주세요.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'MapoFlowerIsland',
                                      fontSize: 16,
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
          ShadowedWave(
            height: 275.0,
            strength: 70.0,
            child: Container(
              color: Color(0XFFE0F8EB),
            ),
          ),
          ShadowedWave(
            height: 250.0,
            strength: 70.0,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFC7EFD8),
                    Color(0xFFB2E8D6),
                    Color(0xFF90D5DE),
                    Color(0xFF88CFD2),
                    Color(0xFF7AC0BB),
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 28.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '자조모임 도움말',
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 24,
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
                  indent: 28.0,
                  endIndent: 178.0,
                  color: Color(0x99FFFFFF),
                  thickness: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
