import 'dart:math';
import 'package:flutter/material.dart';
import 'animated_wave.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: FancyBackgroundApp(),
    );
  }
}

class FancyBackgroundApp extends StatelessWidget {
  final List<Widget> pages = [
    Center(
      child: Text(
        '"우리 딸아이가 떠나간지 5년째"',
      ),
    ),
    Center(
      child: Text(
        '"돌아가신 엄마가 너무 보고싶어요"',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Test(),
            ),
            onBottom(AnimatedWave(
              color: Colors.blue.withAlpha(30),
              strength: 180,
              speed: 1.0,
            )),
            onBottom(AnimatedWave(
              color: Colors.cyan.withAlpha(30),
              strength: 120,
              speed: 0.9,
              offset: pi,
            )),
            onBottom(AnimatedWave(
              color: Colors.lightBlue.withAlpha(30),
              strength: 220,
              speed: 1.2,
              offset: pi / 2,
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.lightBlue,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.lightBlue,
            ),
            title: Text('test1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.lightBlue,
            ),
            title: Text('test2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Colors.lightBlue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Positioned onBottom(Widget child) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: child,
      ),
    );
  }
}

class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  TestState createState() => TestState();
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(''),
      direction: DismissDirection.startToEnd,
      onDismissed: (DismissDirection direction) {},
      background: Test(),
      child: Center(
        child: Text(
          '새로운 글을 가져오는 중입니다.',
        ),
      ),
    );
  }
}
