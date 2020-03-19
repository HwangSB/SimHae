import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution_challenge/pages/splash_page.dart';

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
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}