import 'package:flutter/material.dart';

class StoryDetailPage extends StatelessWidget {
  final String title;
  final String detail;
  final Color backgroundColor;

  StoryDetailPage(
      {Key key,
      @required this.title,
      @required this.detail,
      this.backgroundColor = const Color(0xFF8CDDD5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
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
                          title,
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
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Text(
                          detail,
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
      ),
    );
  }
}
