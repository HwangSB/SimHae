import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StoryDeletePage extends StatelessWidget {
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
                  height: 230.0,
                ),
                MyStoryStream(user: 'user1'),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
          Container(
            height: 210.0,
            color: Colors.white,
            child: SafeArea(
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/delete_sent_story.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210.0),
            child: Divider(
              height: 0.0,
              color: Color(0x69707070),
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
                            color: Color(0xFF8CD4D5),
                          ),
                          iconSize: 28.0,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
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
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('편지를 가져오는중 오류가 발생했습니다');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Text('편지를 가져오는 중...');
          default:
            return _myStoryStream(snapshot.data.documents);
        }
      },
    );
  }

  _myStoryStream(List<DocumentSnapshot> documents) {
    if (documents.length == 0) {
      return Center(
        child: Text(
          '건너간 편지가 없습니다',
          style: TextStyle(
            fontFamily: 'MapoFlowerIsland',
            fontSize: 16,
            color: Color(0xFF3B514F),
          ),
        ),
      );
    }

    return ColumnBuilder(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: documents.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(index.toString()),
          confirmDismiss: (DismissDirection direction) async {
            final bool res = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text("편지 삭제"),
                  content: const Text("정말 삭제하시겠습니까?"),
                  actions: <Widget>[
                    CupertinoButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text("삭제"),
                    ),
                    CupertinoButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text("취소"),
                    ),
                  ],
                );
              },
            );
            return res;
          },
          direction: DismissDirection.endToStart,
          background: Padding(
            padding: const EdgeInsets.symmetric(vertical: 19.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.red,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                            'assets/images/left_quote.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 4.0,
                            top: 16.0,
                            right: 4.0,
                          ),
                          child: Text(
                            documents[index]['title'],
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
                            image: AssetImage(
                              'assets/images/right_quote.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 48.0,
                      endIndent: 48.0,
                      color: Color(0xFF707070),
                      thickness: 0.6,
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          onDismissed: (direction) {
            if (documents.length == 1) {
              documents[index]
                  .reference
                  .parent()
                  .parent()
                  .setData({'hasStory': false});
            }
            documents[index].reference.delete();
          },
        );
      },
    );
  }
}
