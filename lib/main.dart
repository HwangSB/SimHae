import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:solution_challenge/splash_page.dart';
//import 'package:solution_challenge/Login.dart';
import 'package:solution_challenge/story_write_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      title: 'Solution Challenge',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: StoryWritePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}