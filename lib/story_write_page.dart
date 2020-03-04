import 'package:flutter/material.dart';

class StoryWritePage extends StatefulWidget {
  @override
  StoryWritePageState createState() => StoryWritePageState();
}

class StoryWritePageState extends State<StoryWritePage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xBF90CFCB),
        appBar: new AppBar(
            title: new Text(''),
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.near_me,
                    color: Color(0xFFFFFFFF),
                  ),
                  onPressed: null),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
                icon: new Icon(
                  Icons.arrow_back,
                  color: Color(0xFFFFFFFF),
                ),
                onPressed: null)),
        body: Container(
            child: Column(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: myController,
                maxLength: 10,
                decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20.0)),
              ),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
