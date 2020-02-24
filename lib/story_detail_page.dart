import 'package:flutter/material.dart';

class StoryDetailPage extends StatefulWidget {
  final double value;

  StoryDetailPage({this.value});

  @override
  _StoryDetailPageState createState() => _StoryDetailPageState();
}

class _StoryDetailPageState extends State<StoryDetailPage> {
  final String text =
      '언니 언니가 죽은 지 벌써 3개월이나 됐더라. 난 한달밖에 안된줄 알았어. 언니가 죽고 하루 만에 언니 방에 언니가 사놓고 한번도 못입어 본 옷더미들 언니가 마음에 안 들어했던 언니 방 가구들 언니 앨범 자격증증서 사진들까지 다 전부 갖다버리고 깨끗하게 치웠는데 유일 하게 컴퓨터에 옮겨져있는 언니사진들만은 못 지우겠어.\n 이제와서 내가 어떻게 무슨수로 그걸 지울수 가 있어 그걸 지우면 언닌 이제 이 세상에 없 었던 사람이 되어 흔적하나 없게 되는데... 기 억하는 사람도 없어지면 어쩌지? 나라도 기억 해야하는걸까 요즘은 언니가 존재했었는지도 가물가물하고 계속 기억을 되짚으며 언니 흔 적을 찾으며 헤매고 그렇게 살고있어...... 우리집 강아지 호두는 언니를 가장 잘 따랐 는데 호두는 언니가 죽은걸 옆에서 지켜봤을 텐데 언니가 죽었다고 알고있을까? 내가 좋아 하는 음식이 뭔지도 모르겠어. 딸기케이크 치 즈케이크 생크림 모찌롤 다 언니가 좋아해서 내가 따라 좋아한 음식이잖아.';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Column(
              children: <Widget>[
                Row(
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
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/left_quote.png'),
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
                        image: AssetImage('assets/images/right_quote.png'),
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
          ),
          Flexible(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 16,
                          height: 1.75,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
