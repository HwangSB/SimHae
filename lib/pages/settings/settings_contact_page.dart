import 'package:flutter/material.dart';

class SettingsContactPage extends StatelessWidget {
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
                          'Contact us',
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
              height: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64.0),
                child: Text(
                  'Please contact us with your inquiries freesequence@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 18,
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
