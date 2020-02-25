import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/shadowed_wave.dart';
import 'package:solution_challenge/delete_story_page.dart';
import 'package:solution_challenge/story_detail_page.dart';
import 'package:solution_challenge/settings_page.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                            builder: (context) => DeleteStoryPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                OnLineStoryCardBuilder(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return CupertinoButton(
                      padding: EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.white,
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
                                          'assets/images/left_quote.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 4.0,
                                        top: 16.0,
                                        right: 4.0,
                                      ),
                                      child: Text(
                                        '먼저 간 딸아이가 자꾸 꿈에 나오네요',
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
                                            'assets/images/right_quote.png'),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoryDetailPage(
                              title: '',
                              summary: '',
                            ),
                          ),
                        );
                      },
                    );
                  },
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

class OnLineStoryCardBuilder extends StatelessWidget {
  final EdgeInsets padding;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  OnLineStoryCardBuilder(
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
