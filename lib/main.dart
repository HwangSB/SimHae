import 'package:flutter/material.dart';
import 'package:solution_challenge/tos_page.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solution Challeng',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: TosPage(),
    );
  }
}