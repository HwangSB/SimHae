import 'package:flutter/material.dart';
import 'animated_wave.dart';
import 'dart:math';

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
      debugShowCheckedModeBanner: false,
    );
  }
}

class FancyBackgroundApp extends StatelessWidget {
  List<Widget> pages = [
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
              child: PageView.builder(
                controller: PageController(),
                itemBuilder: (_, int index) => pages[index % 2],
              ),
            ),
            onBottom(AnimatedWave(
              color: Colors.blue.withAlpha(30),
              height: 180,
              speed: 1.0,
            )),
            onBottom(AnimatedWave(
              color: Colors.cyan.withAlpha(30),
              height: 120,
              speed: 0.9,
              offset: pi,
            )),
            onBottom(AnimatedWave(
              color: Colors.lightBlueAccent.withAlpha(30),
              height: 220,
              speed: 1.2,
              offset: pi / 2,
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.lightBlue,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.title,
                color: Colors.lightBlue,
              ),
              title: Text('')),
        ],
        currentIndex: 0,
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

  onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
}