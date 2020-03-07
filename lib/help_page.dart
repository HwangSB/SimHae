import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  final List<Entry> data = <Entry>[
    Entry(
      '\'심해\'는 어떤 서비스인가요?',
      <Entry>[
        Entry(
            '\‘심해\'는 자살 유가족분들을 위한 모바일 소통 앱 서비스입니다.\n주요 기능으로는 자살 유가족 간의 소통, 자살 유가족 지원 서비스 (자조모임 등)에 대한 정보 제공, 고인 추모 공간 등의 서비스를 제공하고 있습니다.'),
      ],
    ),
    Entry(
      '\'심해\'는 왜 회원가입이 없나요?',
      <Entry>[
        Entry(
            '\‘심해\'는 개인정보를 요구 하지 않는 익명의 서비스를 제공하고 있습니다. 보다 자유롭고, 편안한 환경 속에서 소통하는 서비스를 제공하기 위함입니다.'),
      ],
    ),
    Entry(
      '제가 쓴 글은 언제까지 뜨나요?',
      <Entry>[
        Entry(
            '\‘심해\’의 글들은 일정 시간이 지난 후 휘발됩니다.\n단, 사연의 경우 ( 마이페이지 > 건너 간 편지 ) 에서 다시 확인하실 수 있습니다. 또한 다시 보내실 수 있습니다.'),
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
        Entry('( 마이페이지 > 문의하기) 에 있는 \‘심해\' 이메일로 연락해주세요.'),
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
