import 'package:flutter/material.dart';

class TosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(''),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '이용약관',
                  style: TextStyle(fontFamily: 'MapoFlowerIsland'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
