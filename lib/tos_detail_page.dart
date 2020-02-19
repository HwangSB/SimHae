import 'package:flutter/material.dart';

class TosDetailPage extends StatelessWidget {
  final String name;
  final String summary;
  final String detail;

  TosDetailPage(
      {Key key,
      @required this.name,
      @required this.summary,
      @required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      '취소',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  this.name,
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 24,
                    shadows: [
                      Shadow(
                        blurRadius: 6.0,
                        offset: Offset(0.0, 3.0),
                        color: Color(0x29000000),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 16.0, right: 32.0),
                child: Text(
                  this.summary,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        blurRadius: 6.0,
                        offset: Offset(0.0, 3.0),
                        color: Color(0x29000000),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        this.detail,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: const Color(0xFFAEE6DD),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: Text(
                          '인지하고 있습니다.',
                          style: TextStyle(
                            fontFamily: 'MapoFlowerIsland',
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
