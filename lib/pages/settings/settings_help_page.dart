import 'package:flutter/material.dart';
import 'package:solution_challenge/generated/l10n.dart';

class SettingsHelpPage extends StatelessWidget {
  final List<Entry> data = <Entry>[
    Entry(
      S.current.helpQuestion1,
      <Entry>[
        Entry(S.current.helpAnswer1),
      ],
    ),
    Entry(
      S.current.helpQuestion2,
      <Entry>[
        Entry(S.current.helpAnswer2),
      ],
    ),
    Entry(
      S.current.helpQuestion3,
      <Entry>[
        Entry(S.current.helpAnswer3),
      ],
    ),
    Entry(
      S.current.helpQuestion4,
      <Entry>[
        Entry(S.current.helpAnswer4),
      ],
    ),
    Entry(
      S.current.helpQuestion5,
      <Entry>[
        Entry(S.current.helpAnswer5),
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
                          S.of(context).help,
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
