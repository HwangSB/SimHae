import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/pages/settings/settings_help_page.dart';
import 'package:solution_challenge/pages/settings/settings_contact_page.dart';

class SettingsPage extends StatelessWidget {
  final List<String> data = ['Help', 'Contact us'];
  final List<Function> pressedFunctions = [
    (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SettingsHelpPage(),
        ),
      );
    },
    (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SettingsContactPage(),
        ),
      );
    },
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
                          'Settings',
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
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0.0),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            data[index],
                            style: TextStyle(
                              fontFamily: 'MapoFlowerIsland',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      pressedFunctions[index](context);
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
