import 'package:flutter/material.dart';
import 'package:solution_challenge/notifying_page_view.dart';
import 'package:solution_challenge/story_page.dart';
import 'package:solution_challenge/story_detail_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ValueNotifier<double> _notifier = ValueNotifier<double>(0.0);

  @override
  void dispose() {
    super.dispose();
    _notifier?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotifyingPageView(
          notifier: _notifier,
          children: <Widget>[
            AnimatedBuilder(
              animation: _notifier,
              builder: (context, _) {
                return StoryPage(value: _notifier.value);
              },
            ),
            AnimatedBuilder(
              animation: _notifier,
              builder: (context, _) {
                return StoryDetailPage(value: _notifier.value);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8CDDD5),
        unselectedItemColor: Color(0xFF8CDDD5),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Color(0xFF8CDDD5),
            ),
            title: Text('test1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Color(0xFF8CDDD5),
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
          color: Color(0xFF8CDDD5),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
