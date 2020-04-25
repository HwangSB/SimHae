import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      'name': 'Internet defamation',
      'summary': 'Laws for promoting the use of information and communication networks and protecting information',
      'detail': 'Users should not distribute information that infringes the interests of others, such as name loss, to the information and communication network (Regulation “Act on Promotion of Information and Communication Network Use and Information Protection”, Paragraph 1, Paragraph 1).\n\n* “User” refers to a person who uses the information and communication service provided by the information and communication service provider (“Act on Promotion of Information and Communication Network Use and Information Protection”, Paragraph 2, Paragraph 1, Paragraph 4) .\n\n* "Information communication network" refers to an information communication system that uses telecommunications equipment or collects, processes, saves, and transmits or receives information using telecommunications equipment, computers, and computer utilization technology ( "Act on Promotion of Utilization of Information and Communication Networks and Protection of Information, etc." "Telecommunications equipment" means coded audio or video by wired and wireless rays and other electronic methods.\n\n-A person who publicly exposes things through the information and communication network for the purpose of slandering others and damages the name of another person is punished by imprisonment for not more than 3 years or a fine of not more than 30 million won (`` Information Act on Promotion of Communication Network Use and Information Protection, "Article 70, Paragraph 1).\nYes> * You cannot file a lawsuit against the above-mentioned intention of the victim of the crime (“Law for Promoting Use of Information and Communication Networks and Information Protection”, Paragraph 3, Article 70).\n\nPersons who openly expose people through the information and communication network for the purpose of slandering others and lose the name of other people are imprisoned for not more than 7 years, suspended for 10 years or less or 50 million won or less. You will be fined (Article 70, Paragraph 2 of the Act on Promotion of Information and Communication Network Use and Information Protection).\nYes> * You cannot file a lawsuit against the above-mentioned intention of the victim of the crime (“Law for Promoting Use of Information and Communication Networks and Information Protection”, Paragraph 3, Article 70).',
      'agree': false,
    },
    {
      'name': 'crime of cyber insult',
      'summary': 'Apart from the contempt of Article 311 of the Criminal Act, the cyber insult clause in the Information and Communication Network Act.',
      'detail': 'In October 2008, the Korean government will make full-scale efforts to establish a new offense against cyber crimes in the Information and Communication Network Law, in addition to the offense under Criminal Code No. 311 as an offense against cyber crimes. Describing the internet with derogatory feelings for some people, as most people know it, not just for the sake of discouragement, to undermine corporate reputation for that person Sometimes recognized sin\n\nSame as punishment under Criminal Code No. 311 (Insult) (Penal Code No. 311 (Insult) A person who insults an open person shall be punished with imprisonment or imprisonment for not more than one year or a fine of not more than 2 million won.)\n''In October 2008, the Korean government will make full-scale efforts to establish a new offense against cyber crimes in the Information and Communication Network Law, in addition to the offense under Criminal Code No. 311 as an offense against cyber crimes. Describing the internet with derogatory feelings for some people, as most people know it, not just for the sake of discouragement, to undermine corporate reputation for that person Sometimes recognized sin\n\n\nSame as punishment under Criminal Code No. 311 (Insult) (Penal Code No. 311 (Insult) A person who insults an open person shall be punished with imprisonment or imprisonment for not more than one year or a fine of not more than 2 million won.)',
      'agree': false,
    },
    {
      'name': 'Computer crime',
      'summary': 'Article 314 of the Criminal Act (obstruction of business), Article 347-2 of the Criminal Act (fraud of using computers, etc.)',
      'detail': '-No. 314 (Business interruption)\n1-1. Definition: Item (1): Method 313 or power that interferes with the work of a person\n1-2. Penalty: Imprisonment of up to 5 years or fine of up to 15 million won. <Revised December 29, 1995>\n\n2-1. Definition: (2): Damage to information storage such as computers and special media such as electronic storage, inputting information to the information storage or illegal commands, or obstructing the processing of other information. Those who interfere with the work of other people\n2-2. Penalty: The same as the type in paragraph 1. (Prison for 5 years or less or fine of 15 million won or less.) <New establishment December 29, 1995>\n\n -No. 347-2 (Scam that uses computer etc.)\n1. Definition: Entering information or illegal commands in a computer or other information device, or inputting unlimited information and updating it to obtain a profit on property, Person who decides to acquire a third party\n2. Penalty: imprisonment of 10 years or less or fine of 20 million won or less. [Full text revision December 29, 2001]',
      'agree': false,
    },
  ];
  final String _precautions =
      'This service provides communication functions and information for families of suicide victims. Please refrain from expressing excessive inconvenience to others, and the contents may be reported and deleted. Prior to use, please review the full text of service-related laws.';

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
                        'Simhae(心海)',
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
                                    'Full Text',
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
                  'Terms of service',
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
