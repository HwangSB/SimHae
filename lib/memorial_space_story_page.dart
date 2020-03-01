import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:solution_challenge/memorial_space_story_detail_page.dart';
import 'package:solution_challenge/memorial_space_story_write_page.dart';

class MemorialSpaceStoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCDEED8),
              Color(0xFF78D0C8),
              Color(0xFF57A7C4),
              Color(0xFF6E84B4),
              Color(0xFF6768B2),
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Material(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: InkResponse(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipRect(
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_back_ios,
                                          color: Color(0x33000000),
                                          size: 30.0,
                                        ),
                                        BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 2.0,
                                            sigmaY: 2.0,
                                          ),
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.white,
                                            size: 28.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
                                      builder: (context) =>
                                          MemorialSpaceStoryWritePage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipRect(
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: <Widget>[
                                        Icon(
                                          Icons.edit,
                                          color: Color(0x33000000),
                                          size: 28.0,
                                        ),
                                        BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 2.0,
                                            sigmaY: 2.0,
                                          ),
                                          child: Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                            size: 28.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '추모공간',
                            style: TextStyle(
                              fontFamily: 'MapoFlowerIsland',
                              fontSize: 32,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 3.0,
                                  offset: Offset(0.0, 0.0),
                                  color: Color(0xFF52A7C6),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '고인을 추모하는 공간입니다\n함께했던 추억이나 기억, 즐거웠던 순간들을\n나눠주세요',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'MapoFlowerIsland',
                              fontSize: 16,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 3.0,
                                  offset: Offset(0.0, 0.0),
                                  color: Color(0xFF52A7C6),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ColumnBuilder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return CupertinoButton(
                          padding: EdgeInsets.all(0.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(28.0),
                                color: Color(0x0D000000),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      '안녕하세요 선배님 선배님 제가 한국사 공부할 때 미래의 역사 선생님이라고 하고 늘 제 독서실 옆자리에서 맛있는 거도 주시고 그러셨잖아요 갑자기 가셔서 너무 놀랐어요. 뭐가 그렇게 힘들었어요...안녕하세요 선배님',
                                      style: TextStyle(
                                        fontFamily: 'MapoFlowerIsland',
                                        fontSize: 14,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 1.0,
                                            offset: Offset(1.0, 1.0),
                                            color: Color(0x4D000000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16.0, bottom: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4.0),
                                          child: Image(
                                            width: 24.0,
                                            height: 24.0,
                                            color: Colors.white,
                                            image: AssetImage(
                                              'assets/images/ribbon.png',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '100',
                                          style: TextStyle(
                                            fontFamily: 'MapoFlowerIsland',
                                            fontSize: 14,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                blurRadius: 1.0,
                                                offset: Offset(1.0, 1.0),
                                                color: Color(0x4D000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MemorialSpaceStoryDetailPage(detail: '안녕하세요', empathy: 100,),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
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
