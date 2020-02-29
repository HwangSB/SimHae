import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String title = '설정';
  List settingList = [
    {
      'title': '설정',
      'category': [
        {
          'title': '도움말',
          'category': [],
        },
        {
          'title': '문의하기',
          'category': [],
        }
      ],
    },
  ];
  List<String> categoryList = ['도움말', '문의하기'];
  List<String> helpList = [];
  List<String> contactList = [];

  @override
  void initState() {
    super.initState();
    settingList = categoryList;
  }

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
                          title,
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
              color: Color(0xFFFFFFFF),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0.0),
                itemBuilder: (context, index) {
                  return CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                    },
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            settingList[index],
                            style: TextStyle(
                              fontFamily: 'MapoFlowerIsland',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: settingList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
