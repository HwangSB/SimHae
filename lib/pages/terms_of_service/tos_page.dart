import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution_challenge/generated/l10n.dart';
import 'package:solution_challenge/widgets/shadowed_wave.dart';
import 'package:solution_challenge/settings_database.dart';
import 'package:solution_challenge/pages/terms_of_service/tos_detail_page.dart';
import 'package:solution_challenge/pages/story/story_page.dart';

class TosPage extends StatefulWidget {
  TosPage({Key key}) : super(key: key);

  @override
  TosPageState createState() => TosPageState();
}

class TosPageState extends State<TosPage> {
  final List<Map<String, dynamic>> _termsOfService = [
    {
      'name': S.current.tosName1,
      'summary': S.current.tosSummary1,
      'detail': S.current.tosDetail1,
      'agree': false,
    },
    {
      'name': S.current.tosName2,
      'summary': S.current.tosSummary2,
      'detail': S.current.tosDetail2,
      'agree': false,
    },
    {
      'name': S.current.tosName3,
      'summary': S.current.tosSummary3,
      'detail': S.current.tosDetail3,
      'agree': false,
    },
  ];
  final String _precautions = S.current.tosPrecautions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 240.0),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        S.of(context).appTitle,
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 20,
                          color: Color(0x91191919),
                          shadows: [
                            Shadow(
                              blurRadius: 6.0,
                              offset: Offset(0.0, 3.0),
                              color: Color(0xFF7DBAC8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    _precautions,
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 14,
                      color: Color(0x91191919),
                      height: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _termsOfService.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                      value: _termsOfService[index]['agree'],
                                      onChanged: null),
                                  Text(
                                    _termsOfService[index]['name'],
                                    style: TextStyle(
                                        fontFamily: 'MapoFlowerIsland',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: MaterialButton(
                                  child: Text(
                                    S.of(context).tosSeeMore,
                                    style: TextStyle(
                                        fontFamily: 'MapoFlowerIsland'),
                                  ),
                                  onPressed: () {
                                    _navigateToTosDetailPage(context, index);
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          indent: 8.0,
                          endIndent: 8.0,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 32.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: const Color(0xFFAEE6DD),
                          disabledColor: const Color(0xAAAEE6DD),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                fontFamily: 'MapoFlowerIsland',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: _isAcceptAllTerms()
                              ? _continueButtonPressed
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ShadowedWave(
            child: Container(
              color: Color(0xFFCCF1D9),
            ),
            height: 240.0,
            strength: 70.0,
          ),
          ShadowedWave(
            child: Container(
              color: Color(0xFF8CDDD5),
            ),
            height: 220.0,
            strength: 70.0,
          ),
          SafeArea(
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Text(
                  S.of(context).tos,
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 26,
                    shadows: [
                      Shadow(
                        blurRadius: 6.0,
                        offset: Offset(0.0, 3.0),
                        color: Color(0x29000000),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _navigateToTosDetailPage(BuildContext context, int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TosDetailPage(
          name: _termsOfService[index]['name'],
          summary: _termsOfService[index]['summary'],
          detail: _termsOfService[index]['detail'],
        ),
      ),
    );

    if (result != null) {
      _termsOfService[index]['agree'] = result;
    }
  }

  bool _isAcceptAllTerms() {
    return _termsOfService.where((term) => !term['agree']).isEmpty;
  }

  void _continueButtonPressed() async {
    SettingsDatabase settings = SettingsDatabase();
    settings.update(AppSetting(key: 'accept_all_tos', value: 'true'));

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => StoryPage()));
  }
}
