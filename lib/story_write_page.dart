import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

StoryWritePageState pageState;

//컬렉션명
final String collection_name = "Stories";

//필드명
final String field_color = "color";
final String field_detail = "detail";
final String field_title = "title";

Color col = Color(0xBF90CFCB);

//각각의 텍스트콘트롤러를 가진다.
final TextEditingController _detailController = TextEditingController();
final TextEditingController _titleController = TextEditingController();

class StoryWritePage extends StatefulWidget {
  @override
  StoryWritePageState createState() {
    pageState = StoryWritePageState();
    return pageState;
  }
}

class StoryWritePageState extends State<StoryWritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: col,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              IconButtons(),
              StoryTitle(_titleController),
              Expanded(
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
                            decoration:
                                InputDecoration(labelText: "detail"), //걍 데코
                            controller: _detailController,
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
      ),
    );
  }
}

void createDoc(String detail, String title) {
  Firestore.instance.collection(collection_name).add({
    //field_color: color,
    field_detail: detail,
    field_title: title,
  });
}

class StoryTitle extends StatelessWidget {
  final TextEditingController _textEditingController;

  StoryTitle(this._textEditingController);

  @override
  Widget build(BuildContext context) {
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
                controller: _textEditingController,
                style: TextStyle(
                  fontFamily: 'MapoFlowerIsland',
                  fontSize: 16,
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
}

class IconButtons extends StatefulWidget {
  @override
  _IconButtonsState createState() => _IconButtonsState();
}

class _IconButtonsState extends State<IconButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Row(
          children: <Widget>[
            InkResponse(
              child: Image(
                image: AssetImage('assets/images/pallette.png'),
                height: 40.0,
                width: 40.0,
              ),
              onTap: () {
                //_showDialog(context);
              }, //팔레트 창을 보여주도록 한다
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
                iconSize: 28.0,
                onPressed: () {
                  if (_detailController.text.isNotEmpty && //컬러가 없넹?
                      _titleController.text.isNotEmpty) {
                    createDoc(_detailController.text, _titleController.text);
                  }
                  _detailController.clear();
                  _titleController.clear();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
 
  Future<String> _asyncshowDialog(BuildContext context) async{
    return await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return SimpleDialog(
          children: <Widget>[
             Container(
              height: 300.0,
              width: 300.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "오늘 '당신의 바다'는 무슨 색 인가요?",
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkResponse(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD2EDDB),
                        shape: BoxShape.circle,
                      ),
                      height: 45.0,
                      width: 45.0,
                    ),
                    onTap: () {
                      setState(() {
                        col = Color(0xFFD2EDDB);
                      });
                      
                    },
                  ),
                  InkResponse(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFABD9D0),
                        shape: BoxShape.circle,
                      ),
                      height: 45.0,
                      width: 45.0,
                    ),
                  ),
                  InkResponse(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFA4DBDD),
                        shape: BoxShape.circle,
                      ),
                      height: 45.0,
                      width: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkResponse(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFAAC5E4),
                        shape: BoxShape.circle,
                      ),
                      height: 45.0,
                      width: 45.0,
                    ),
                  ),
                  InkResponse(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF98ADD3),
                        shape: BoxShape.circle,
                      ),
                      height: 45.0,
                      width: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "기분, 감정, 날씨 어느 것이어도 좋아요",
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "오늘 당신의 바다 색을 정해보세요 :)",
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
          ],
          
        );
      },
      
    );
    
    //showDialog(context: context, builder: (BuildContext context) => palette);
  }
}
