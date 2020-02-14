import 'package:flutter/material.dart';
import 'animated_wave.dart';
import 'dart:math';

class MainPage extends StatelessWidget {
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
              height: 120,
              strength: 100,
              speed: 1.0,
              offset: 0,
            )),
            onBottom(AnimatedWave(
              color: Colors.cyan.withAlpha(30),
              height: 120,
              strength: 80,
              speed: 0.9,
              offset: pi,
            )),
            onBottom(AnimatedWave(
              color: Colors.lightBlue.withAlpha(30),
              height: 120,
              strength: 120,
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
