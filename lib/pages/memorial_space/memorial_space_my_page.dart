import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:solution_challenge/global_user_account.dart';
import 'package:solution_challenge/pages/memorial_space/memorial_space_detail_page.dart';
import 'package:solution_challenge/pages/memorial_space/memorial_space_write_page.dart';

class MemorialSpaceMyPage extends StatefulWidget {
  @override
  _MemorialSpaceMyPageState createState() => _MemorialSpaceMyPageState();
}

class _MemorialSpaceMyPageState extends State<MemorialSpaceMyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
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
            controller: ScrollController(),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: _shadowedIconButton(Icons.arrow_back_ios, () {
                            Navigator.pop(context);
                          }),
                        ),
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
                            'My Stories',
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
                    StreamBuilder<QuerySnapshot>(
                      stream: Firestore.instance
                          .collection('MemorialSpace')
                          .where('user',
                              isEqualTo: GlobalUserAccount.instance.uid)
                          .orderBy('stamp', descending: true)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 64.0),
                            child: Text(
                              'Oops! We lost the story',
                              style: TextStyle(
                                fontFamily: 'MapoFlowerIsland',
                                fontSize: 16,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          );
                        }
                        if (!snapshot.hasData) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 64.0),
                            child: Text(
                              'No stories here',
                              style: TextStyle(
                                fontFamily: 'MapoFlowerIsland',
                                fontSize: 16,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Padding(
                              padding: const EdgeInsets.only(top: 64.0),
                              child: Text(
                                'Loading Stories...',
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            );
                          default:
                            return _memorialSpaceStoryStream(
                                snapshot.data.documents);
                        }
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

  _memorialSpaceStoryStream(List<DocumentSnapshot> documents) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(16.0),
      itemCount: documents.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(documents[index].documentID),
          background: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MapoFlowerIsland',
                    ),
                  ),
                ],
              ),
            ),
          ),
          secondaryBackground: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.red,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MapoFlowerIsland',
                    ),
                  ),
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
          confirmDismiss: (DismissDirection direction) async {
            if (direction == DismissDirection.startToEnd) {
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text("Edit post"),
                    content: const Text("Are you sure you want to delete this post?"),
                    actions: <Widget>[
                      CupertinoButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MemorialSpaceManagePage(
                                  document: documents[index],
                                  detail: documents[index]['detail']),
                            ),
                          );
                        },
                        child: const Text("Yes"),
                      ),
                      CupertinoButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text("No"),
                      ),
                    ],
                  );
                },
              );
            } else if (direction == DismissDirection.endToStart) {
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text("Delete post"),
                    content: const Text("Are you sure you want to delete this post?"),
                    actions: <Widget>[
                      CupertinoButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text("Yes"),
                      ),
                      CupertinoButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text("No"),
                      ),
                    ],
                  );
                },
              );
            }
            return false;
          },
          child: CupertinoButton(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _abridgedOf(documents[index]['detail'], 100),
                        maxLines: 2,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
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
                            documents[index]['empathizers'].length.toString(),
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
                  builder: (context) =>
                      MemorialSpaceDetailPage(document: documents[index]),
                ),
              );
            },
          ),
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
              documents[index].reference.delete();
            }
          },
        );
      },
    );
  }

  _shadowedIconButton(IconData icon, Function onTap) {
    return InkResponse(
      onTap: onTap,
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
                icon,
                color: Color(0x33000000),
                size: 30.0,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _abridgedOf(String text, int max) =>
      text.substring(0, text.length < max ? text.length : max).trim();
}
