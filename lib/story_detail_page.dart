import 'package:flutter/material.dart';

class StoryDetailPage extends StatefulWidget {
  final String title;
  final String detail;
  final Color color;

  StoryDetailPage(
      {Key key,
      @required this.title,
      @required this.detail,
      @required this.color})
      : super(key: key);

  @override
  _StoryDetailPageState createState() => _StoryDetailPageState();
}

class _StoryDetailPageState extends State<StoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: widget.color,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              _iconButtons(),
              _titleText(),
              _detailText(),
            ],
          ),
        ),
      ),
    );
  }

  _iconButtons() {
    return Row(
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
    );
  }

  _titleText() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image(
                image: AssetImage('assets/images/left_quote.png'),
              ),
            ),
            SizedBox(
              width: 250.0,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'MapoFlowerIsland',
                  fontSize: 16,
                  color: Color(0xFF3B514F),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
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
    );
  }

  _detailText() {
    return Expanded(
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
                  widget.detail,
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
    );
  }
}
