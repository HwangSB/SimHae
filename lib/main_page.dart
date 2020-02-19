import 'package:flutter/material.dart';
import 'package:solution_challenge/animated_wave.dart';
// import 'package:solution_challenge/story_page.dart';

class MainPage extends StatelessWidget {
  final double waveHeight = 130.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // StoryPage(),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedWave(
                  color: Colors.blue.withAlpha(30),
                  height: waveHeight,
                  strength: 100,
                  speed: 1.0,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedWave(
                  color: Colors.cyan.withAlpha(30),
                  height: waveHeight,
                  strength: 80,
                  speed: 0.9,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedWave(
                  color: Colors.lightBlue.withAlpha(30),
                  height: waveHeight,
                  strength: 120,
                  speed: 1.2,
                ),
              ),
            ),
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
}
