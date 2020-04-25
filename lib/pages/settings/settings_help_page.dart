import 'package:flutter/material.dart';

class SettingsHelpPage extends StatelessWidget {
  final List<Entry> data = <Entry>[
    Entry(
      'What kind of service is "Simhae"?',
      <Entry>[
        Entry(
            '"Simhae : The Sea of Mind" is a mobile communication app service for suicide survivors.\nThe main functions are\n① a communication function that enables writing and sharing of post with suicide survivors,\n②  a regional center for survivors and provision of self-help information,\nand  ③  a memorial space for the deceased.'),
      ],
    ),
    Entry(
      'Why no membership in "Simhae"?',
      <Entry>[
        Entry(
            '"Simhae" offers anonymous services. We are trying to lower the psychological barriers of service by making it possible for survivors to log in to the social site without being separately notified of information such as "relationship with the deceased" and "bereaved period"'),
      ],
    ),
    Entry(
      'How long will my writing be floating?',
      <Entry>[
        Entry(
            '-On the main page of "Simhae", press “Send Text button” and the post it was created will be randomly floated on the surface. You can check it in (My Page> Crossed Mail) and upload again (when deleting it before).\n\n -In the case of post written in the category of Memorial space, it will be volatilized after a certain period.'),
      ],
    ),
    Entry(
      'I want to erase the post I wrote.',
      <Entry>[
        Entry('In case of post, go (My Page> Mail), please delete.'),
      ],
    ),
    Entry(
      'I saw advertisement or slander post.',
      <Entry>[
        Entry('We try to go to (My Page> Contact us) for the sentences that cause unpleasant feelings and process them through the individual filer. Due to the nature of the service, we are constantly monitoring it, but you should not hesitate to contact us if you feel that the emotions you feel are different.'),
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
                          'Help',
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
