import 'package:flutter/material.dart';
import 'package:solution_challenge/generated/l10n.dart';
import 'package:solution_challenge/widgets/shadowed_wave.dart';

class InformationMapHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 280,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x3BE1E2E2),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                S.of(context).whatIsSurvivorsMeeting,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 18,
                                  color: Color(0xFF88CED1),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    S.of(context).survivorsMeetingIntroduction,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'MapoFlowerIsland',
                                      fontSize: 16,
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 52.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  S.of(context).survivorsMeetingQuestion1,
                                  style: TextStyle(
                                    fontFamily: 'MapoFlowerIsland',
                                    fontSize: 18,
                                    color: Color(0xFF88CED1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.0,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.0, 0.0),
                                    color: Color(0xFF707070)),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 34.0),
                              child: Text(
                                S.of(context).survivorsMeetingAnswer1_1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 12,
                                  color: Color(0xFF707070),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.0, 0.0),
                                    color: Color(0xFF707070)),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 34.0),
                              child: Text(
                                S.of(context).survivorsMeetingAnswer1_2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 12,
                                  color: Color(0xFF707070),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                S.of(context).survivorsMeetingAnswer1_3,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 9,
                                  color: Color(0xFF707070),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 52.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                S.of(context).survivorsMeetingQuestion2,
                                style: TextStyle(
                                  fontFamily: 'MapoFlowerIsland',
                                  fontSize: 18,
                                  color: Color(0xFF88CED1),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    S.of(context).survivorsMeetingAnswer2_1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'MapoFlowerIsland',
                                      fontSize: 16,
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
          ShadowedWave(
            height: 275.0,
            strength: 70.0,
            child: Container(
              color: Color(0XFFE0F8EB),
            ),
          ),
          ShadowedWave(
            height: 250.0,
            strength: 70.0,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFC7EFD8),
                    Color(0xFFB2E8D6),
                    Color(0xFF90D5DE),
                    Color(0xFF88CFD2),
                    Color(0xFF7AC0BB),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          iconSize: 28.0,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 28.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        S.of(context).survivorsMeetingHelp,
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 24,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 6.0,
                              offset: Offset(0.0, 3.0),
                              color: Color(0x29000000),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  indent: 28.0,
                  endIndent: 178.0,
                  color: Color(0x99FFFFFF),
                  thickness: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
