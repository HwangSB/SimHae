import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:solution_challenge/widgets/shadowed_wave.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InformationMapCommunityPage extends StatelessWidget {
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
                  height: 280,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Color(0x1A707070)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '온라인 카페',
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 16,
                                  color: Color(0xFF3B514F),
                                ),
                              ),
                            ],
                          ),
                        ),
                        StreamBuilder<QuerySnapshot>(
                          stream: Firestore.instance
                              .collection('InformationMapCommunity')
                              .snapshots(),
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Padding(
                                  padding: const EdgeInsets.only(top: 64.0),
                                  child: Text(
                                    '커뮤니티 글을 가져오는 중...',
                                    style: TextStyle(
                                      fontFamily: 'MapoFlowerIsland',
                                      fontSize: 16,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                );
                              default:
                                return _informationMapCommunityStream(
                                    snapshot.data.documents);
                            }
                          },
                        ),
                        SizedBox(height: 16.0,),
                      ],
                    ),
                  ),
                ),
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 28.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '커뮤니티',
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
                  endIndent: 210.0,
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

  _informationMapCommunityStream(List<DocumentSnapshot> documents) {
    return ColumnBuilder(
      padding: EdgeInsets.all(0.0),
      itemCount: documents.length,
      itemBuilder: (context, index) {
        return Container(
          width:double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Color(0x1A707070)),
            color: Color(0x4DEBF8E0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    documents[index]['name'],
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 13,
                      color: Color(0xFF7DC3C0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                  child: Text(
                    documents[index]['address'],
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    documents[index]['sns'],
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
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