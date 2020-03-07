import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:solution_challenge/global_user_account.dart';

class StoryWritePage extends StatefulWidget {
  @override
  _StoryWritePageState createState() => _StoryWritePageState();
}

class _StoryWritePageState extends State<StoryWritePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final List<String> _paletteColors = [
    '0xFFD2EDDB',
    '0xFFABD9D0',
    '0xFFA4DBDD',
    '0xFFAAC5E4',
    '0xFF98ADD3',
  ];
  String _paletteColor;

  @override
  void initState() {
    _paletteColor = _paletteColors[2];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _colorFrom(_paletteColor),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              _iconButtons(),
              _titleTextField(),
              _detailTextField(),
            ],
          ),
        ),
      ),
    );
  }

  _iconButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
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
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkResponse(
                  child: Image(
                    image: AssetImage('assets/images/palette.png'),
                    height: 40.0,
                    width: 40.0,
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) => _buildPaletteColorDialog(),
                    ).then((value) {
                      setState(() {
                        _paletteColor = value ?? _paletteColor;
                      });
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  iconSize: 28.0,
                  onPressed: () {
                    if (_titleController.text.isNotEmpty &&
                        _detailController.text.isNotEmpty) {
                      _createDocument(
                        _titleController.text,
                        _detailController.text,
                        _paletteColor,
                      );
                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _titleTextField() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0),
              child: Image(
                image: AssetImage('assets/images/left_quote.png'),
              ),
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: _titleController,
                style: TextStyle(
                  fontFamily: 'MapoFlowerIsland',
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  counterText: '',
                  focusedBorder: UnderlineInputBorder(),
                ),
                maxLength: 48,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Image(
                image: AssetImage('assets/images/right_quote.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _detailTextField() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: TextField(
                  controller: _detailController,
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 16,
                    height: 1.75,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildPaletteColorDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 22.0),
                  child: Text(
                    "오늘 '당신의 바다'는 무슨 색 인가요?",
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 14,
                      shadows: [
                        Shadow(
                          color: Color(0xFFA4DBDD),
                          blurRadius: 6.0,
                          offset: Offset(0.0, 3.0),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkResponse(
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: _colorFrom(_paletteColors[0]),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3B000000),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context, _paletteColors[0]);
                    },
                  ),
                  InkResponse(
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: _colorFrom(_paletteColors[1]),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3B000000),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context, _paletteColors[1]);
                    },
                  ),
                  InkResponse(
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: _colorFrom(_paletteColors[2]),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3B000000),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context, _paletteColors[2]);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkResponse(
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: _colorFrom(_paletteColors[3]),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3B000000),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context, _paletteColors[3]);
                    },
                  ),
                  InkResponse(
                    child: Container(
                      decoration: BoxDecoration(
                        color: _colorFrom(_paletteColors[4]),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3B000000),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      height: 45.0,
                      width: 45.0,
                    ),
                    onTap: () {
                      Navigator.pop(context, _paletteColors[4]);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "기분, 감정, 날씨 어느 것이어도 좋아요",
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 12,
                      shadows: [
                        Shadow(
                          color: Color(0xFFA4DBDD),
                          blurRadius: 6.0,
                          offset: Offset(0.0, 3.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    "오늘 당신의 바다 색을 정해보세요 :)",
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 12,
                      shadows: [
                        Shadow(
                          color: Color(0xFFA4DBDD),
                          blurRadius: 6.0,
                          offset: Offset(0.0, 3.0),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _createDocument(String title, String detail, String color) async {
    await Firestore.instance
        .collection('Users')
        .document(GlobalUserAccount.instance.uid)
        .get()
        .then((document) {
      if (!document['hasStory']) {
        Firestore.instance
            .document('Users/${GlobalUserAccount.instance.uid}')
            .setData({'hasStory': true});
      }
    });
    Firestore.instance
        .collection('Users')
        .document(GlobalUserAccount.instance.uid)
        .collection('Stories')
        .add({
      'title': title,
      'detail': detail,
      'color': color,
    });
  }

  Color _colorFrom(String hexString) {
    return Color(int.parse(hexString));
  }
}
