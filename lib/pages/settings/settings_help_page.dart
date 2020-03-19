import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  final List<Entry> data = <Entry>[
    Entry(
      '\'심해\'는 어떤 서비스인가요?',
      <Entry>[
        Entry(
            '\'심해(心海): 마음을 담은 바다\' 는 자살 유족분들을 위한 모바일 소통 앱 서비스입니다. 주요 기능으로는 ① 자살 유족간의 사연작성 및 공유가 가능한 소통기능, ② 유족들을 위한 지역센터 및 자조모임 정보 제공 ③ 고인을 기리는 추모공간이 있습니다.'),
      ],
    ),
    Entry(
      '\'심해\'는 왜 회원가입이 없나요?',
      <Entry>[
        Entry(
            '\'심해\'는 익명의 서비스를 제공하고 있으며, 유족분들에게 \'고인과의 관계\', \'사별기간\' 등의 정보를 따로 받지 않고 소셜사이트 로그인으로 사용을 가능하게 하여 서비스에 대한 심리적 장벽을 낮추려 하고 있습니다.'),
      ],
    ),
    Entry(
      '제가 쓴 글은 언제까지 뜨나요?',
      <Entry>[
        Entry(
            '-\'심해\' 메인 페이지에서 > 글 쓰기 버튼을 눌러 작성하신 사연은 계속해서 랜덤으로 화면에 띄워집니다.\n( 마이페이지 > 건너 간 편지 ) 에서 확인 및 재업로드 (이전 삭제 시) 가 가능합니다. \n\n-추모공간 카테고리에 쓰신 글의 경우에는 일정 기간 이후 휘발됩니다.'),
      ],
    ),
    Entry(
      '제가 쓴 글을 지우고 싶어요.',
      <Entry>[
        Entry('사연의 경우 ( 마이페이지 > 건너 간 편지 ) 에서 삭제해 주시면 됩니다.'),
      ],
    ),
    Entry(
      '광고나 비방성 글을 보았어요.',
      <Entry>[
        Entry('불편한 감정을 일으키는 글은 (마이페이지 > 문의하기) 로 가셔서 개별 신고 절차를 통해 처리하도록 하고 있습니다. 서비스 특성상 상시 모니터링을 하고 있지만 개인별로 느끼는 감정은 다르기에 주저 없이 문의해주시면 되겠습니다.'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF9DEAED),
                            ),
                            iconSize: 28.0,
                            onPressed: () {
                              if (Navigator.canPop(context)) {
                                Navigator.pop(context);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '도움말',
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                padding: EdgeInsets.all(0.0),
                itemCount: data.length,
                itemBuilder: (context, index) => EntryItem(data[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Text(
            root.title,
            style: TextStyle(
              height: 1.5,
              fontFamily: 'MapoFlowerIsland',
              fontSize: 16,
            ),
          ),
        ),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(
        root.title,
        style: TextStyle(
          fontFamily: 'MapoFlowerIsland',
          fontSize: 16,
        ),
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
