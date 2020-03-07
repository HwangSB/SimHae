import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/global_user_account.dart';
import 'package:solution_challenge/shadowed_wave.dart';
import 'package:solution_challenge/story_delete_page.dart';
import 'package:solution_challenge/story_detail_page.dart';
import 'package:solution_challenge/settings_page.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 250,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CupertinoButton(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/sent_story.png'),
                          ),
                          Text(
                            '건너간 편지',
                            style: TextStyle(
                              fontFamily: 'MapoFlowerIsland',
                              fontSize: 18,
                              color: Color(0xFF81CCC6),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xFF81CCC6),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoryDeletePage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                MyStoryStream(user: GlobalUserAccount.instance.uid),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
          ShadowedWave(
            height: 275.0,
            strength: 70.0,
            child: Container(
              color: Color(0XFFE0F8EB),
            ),
          ),
          ShadowedWave(
            height: 250.0,
            strength: 70.0,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFC7EFD8),
                    Color(0xFFB2E8D6),
                    Color(0xFF90D5DE),
                    Color(0xFF88CFD2),
                    Color(0xFF7AC0BB),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Row(
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
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkResponse(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingsPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x29000000),
                                  blurRadius: 6.0,
                                  offset: Offset(0.0, 3.0),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Color(0xFF8CD4D5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 28.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '나의 바다',
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 24,
                          color: Colors.white,
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
                ),
                Divider(
                  indent: 28.0,
                  endIndent: 248.0,
                  color: Color(0x99FFFFFF),
                  thickness: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnBuilder extends StatelessWidget {
  final EdgeInsets padding;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  ColumnBuilder(
      {Key key,
      @required this.itemCount,
      @required this.itemBuilder,
      this.padding = const EdgeInsets.all(16.0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: List.generate(
          this.itemCount,
          (index) => this.itemBuilder(context, index),
        ),
      ),
    );
  }
}

class MyStoryStream extends StatelessWidget {
  final String user;

  MyStoryStream({@required this.user});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance
          .collection('Users')
          .document(this.user)
          .collection('Stories')
          .orderBy('stamp', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            '편지를 가져오는중 오류가 발생했습니다',
            style: TextStyle(
              fontFamily: 'MapoFlowerIsland',
              fontSize: 16,
              color: Color(0xFF3B514F),
            ),
          );
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Text(
              '편지를 가져오는 중...',
              style: TextStyle(
                fontFamily: 'MapoFlowerIsland',
                fontSize: 16,
                color: Color(0xFF3B514F),
              ),
            );
          default:
            return _myStoryStream(snapshot.data.documents);
        }
      },
    );
  }

  _myStoryStream(List<DocumentSnapshot> documents) {
    if (documents.length == 0) {
      return Text(
        '건너간 편지가 없습니다',
        style: TextStyle(
          fontFamily: 'MapoFlowerIsland',
          fontSize: 16,
          color: Color(0xFF3B514F),
        ),
      );
    }

    return ColumnBuilder(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: documents.length,
      itemBuilder: (context, index) {
        return CupertinoButton(
          padding: EdgeInsets.all(0.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16.0),
                color: Color(0xFFFAFBFB),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    blurRadius: 6.0,
                    offset: Offset(0.0, 3.0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: _titleText(documents[index]['title']),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StoryDetailPage(
                  title: documents[index]['title'],
                  detail: documents[index]['detail'],
                  color: Color(
                    int.parse(documents[index]['color']),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  _titleText(String title) {
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
                title,
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
}
