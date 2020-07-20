import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:solution_challenge/generated/l10n.dart';
import 'package:solution_challenge/global_user_account.dart';

class StoryWritePage extends StatefulWidget {
  final DocumentSnapshot document;
  final String title;
  final String detail;
  final String color;

  StoryWritePage({this.document, this.title, this.detail, this.color});

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
    super.initState();
    _titleController.text = widget.title ?? '';
    _detailController.text = widget.detail ?? '';
    _paletteColor = widget.color ?? _paletteColors[2];
    // TODO: 주의사항 다이얼로그
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     return Container(
    //       color: Colors.red,
    //     );
    //   }
    // );
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
                  onPressed: _send,
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
                    S.of(context).paletteColorTitle,
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
                    S.of(context).paletteColorDescription1,
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
                    S.of(context).paletteColorDescription2,
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

  _send() async {
    if (_titleController.text.trim().isNotEmpty &&
        _detailController.text.trim().isNotEmpty) {
      bool result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(S.of(context).letterWrite),
            content: Text(S.of(context).letterWriteApply),
            actions: <Widget>[
              CupertinoButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(S.of(context).apply),
              ),
              CupertinoButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(S.of(context).cancel),
              ),
            ],
          );
        },
      );

      if (result) {
        if (widget.document == null) {
          _createDocument(
            _titleController.text,
            _detailController.text,
            _paletteColor,
          );
        } else {
          _updateDocument(
            _titleController.text,
            _detailController.text,
            _paletteColor,
          );
        }
        Navigator.pop(context);
      }
    }
  }

  _createDocument(String title, String detail, String color) async {
    await Firestore.instance
        .collection('Users')
        .document(GlobalUserAccount.instance.uid)
        .get()
        .then((document) {
      if (!document['hasStory']) {
        Firestore.instance
            .collection('Users')
            .document(GlobalUserAccount.instance.uid)
            .updateData({'hasStory': true});
      }
    });
    Firestore.instance
        .collection('Users')
        .document(GlobalUserAccount.instance.uid)
        .collection('Stories')
        .add({
      'stamp': Timestamp.now(),
      'title': title,
      'detail': detail,
      'color': color,
    });
  }

  _updateDocument(String title, String detail, String color) async {
    await widget.document.reference
        .updateData({'title': title, 'detail': detail, 'color': color});
  }

  Color _colorFrom(String hexString) {
    return Color(int.parse(hexString));
  }
}
