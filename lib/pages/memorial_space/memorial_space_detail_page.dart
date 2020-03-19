import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/global_user_account.dart';

class MemorialSpaceDetailPage extends StatefulWidget {
  final DocumentSnapshot document;

  MemorialSpaceDetailPage({Key key, @required this.document})
      : super(key: key);

  @override
  _MemorialSpaceDetailPageState createState() =>
      _MemorialSpaceDetailPageState();
}

class _MemorialSpaceDetailPageState
    extends State<MemorialSpaceDetailPage> {
  String detail;
  List<dynamic> empathizers;

  @override
  void initState() {
    super.initState();
    detail = widget.document['detail'];
    empathizers = widget.document['empathizers'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/memorial_space_background.png',
            ),
          ),
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
                    CupertinoButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Image(
                              image: AssetImage('assets/images/ribbon.png'),
                              color: Colors.white,
                              width: 38.0,
                              height: 38.0,
                            ),
                          ),
                          Text(
                            empathizers.length.toString(),
                            style: TextStyle(
                              fontFamily: 'MapoFlowerIsland',
                              fontSize: 20,
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
                      onPressed: _incrementEmpathy,
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                detail,
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
          ),
        ),
      ),
    );
  }

  _incrementEmpathy() {
    if (empathizers.contains(GlobalUserAccount.instance.uid)) return;

    setState(() {
      empathizers.add(GlobalUserAccount.instance.uid);
    });
    widget.document.reference.updateData({'empathizers': empathizers});
  }
}
