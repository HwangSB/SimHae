import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:solution_challenge/global_user_account.dart';
import 'package:solution_challenge/pages/memorial_space/memorial_space_loading_page.dart';

class MemorialSpaceStoryWritePage extends StatefulWidget {
  final DocumentSnapshot document;
  final String detail;

  MemorialSpaceStoryWritePage({this.document, this.detail});

  @override
  _MemorialSpaceStoryWritePageState createState() =>
      _MemorialSpaceStoryWritePageState();
}

class _MemorialSpaceStoryWritePageState
    extends State<MemorialSpaceStoryWritePage> {
  final TextEditingController _detailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _detailController.text = widget.detail ?? '';
  }

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
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PopBackButton(),
                Padding(
                  padding: const EdgeInsets.only(left: 36.0),
                  child: Text(
                    '당신의 이야기를 나눠주세요',
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 21,
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
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 14.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(28.0),
                        color: Color(0x0D000000),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: TextField(
                          controller: _detailController,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MapoFlowerIsland',
                            fontSize: 14,
                            height: 1.75,
                            shadows: [
                              Shadow(
                                blurRadius: 1.0,
                                offset: Offset(1.0, 1.0),
                                color: Color(0x66000000),
                              ),
                            ],
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
                CupertinoButton(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(28.0),
                      color: Color(0x0D000000),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          '등록',
                          style: TextStyle(
                            fontFamily: 'MapoFlowerIsland',
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
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_detailController.text.trim().isNotEmpty) {
                      if (widget.document == null) {
                        _createDocument(_detailController.text);
                      } else {
                        _updateDocument(_detailController.text);
                      }
                      Navigator.pushReplacement(
                        context,
                        FadePageRoute(
                          page: MemorialSpaceLoadingPage(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _createDocument(String detail) async {
    Firestore.instance.collection('MemorialSpace').add({
      'user': GlobalUserAccount.instance.uid,
      'detail': detail,
      'empathizers': [],
      'stamp': Timestamp.now(),
    });
  }

  _updateDocument(String detail) async {
    widget.document.reference.updateData({'detail': detail});
  }
}

class PopBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}

class FadePageRoute extends PageRouteBuilder {
  final Widget page;

  FadePageRoute({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
