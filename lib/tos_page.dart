import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution_challenge/shadowed_wave.dart';
import 'package:solution_challenge/settings_database.dart';
import 'package:solution_challenge/tos_detail_page.dart';
import 'package:solution_challenge/story_page.dart';

class TosPage extends StatefulWidget {
  TosPage({Key key}) : super(key: key);

  @override
  TosPageState createState() => TosPageState();
}

class TosPageState extends State<TosPage> {
  final List<Map<String, dynamic>> _termsOfService = [
    {
      'name': '인터넷 명예훼손',
      'summary': '정보통신망 이용촉진 및 정보보호 등에 관한 법률',
      'detail':
          '1. 정의\n이용자는 명예훼손 등 타인의 권리를 침해하는 정보를 정보통신망에 유통시켜서는 안 됩니다(규제「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제44조제1항).\n\n※ “이용자”란 정보통신서비스 제공자가 제공하는 정보통신서비스를 이용하는 사람을 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제4호).\n\n※ “정보통신망”이란 전기통신설비를 이용하거나 전기통신설비와 컴퓨터 및 컴퓨터의 이용기술을 활용하여 정보를 수집·가공·저장·검색·송신 또는 수신하는 정보통신체제를 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제1호). ‘전기통신설비’란 유선·무선·광선 및 기타의 전자적 방식에 의하여 부호·문언·음향 또는 영상\n\n2. 처벌\n- 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 사실을 드러내어 다른 사람의 명예를 훼손한 자는 3년 이하의 징역 또는 3천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제1항).\nㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반해 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).\n\n- 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 거짓의 사실을 드러내어 다른 사람의 명예를 훼손한 자는 7년 이하의 징역, 10년 이하의 자격정지 또는 5천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제2항).\nㄴ> 위의 죄는 피해자가 구체적으로 밝힌 의사에 반하여 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).',
      'agree': false,
    },
    {
      'name': '사이버 모욕',
      'summary': '형법 제311조의 모욕죄와 별도로 정보통신망법에 사이버 모욕죄 조항',
      'detail':
          '1. 정의\n2008년 10월, 대한민국 정부는 사이버상 모욕 행위에 대해 형법 제311조의 모욕죄와 별도로 정보통신망법에 사이버 모욕죄 조항을 신설하는 것을 본격적으로 추진. 어떤 사람에 대한 사실이 아닌 내용을 많은 사람이 알 수 있도록 인터넷에 경멸적 감정을 담아 기재해 그 사람에 대한 사회적 평가를 훼손시킬 때 인정되는 죄\n\n2. 처벌\n형법 제311조(모욕)의 처벌과 동일(형법 제311조(모욕) 공연히 사람을 모욕한 자는 1년 이하의 징역이나 금고 또는 200만원 이하의 벌금에 처한다.)',
      'agree': false,
    },
    {
      'name': '사이버 폭력',
      'summary': '사이버 폭력(악성 댓글)에 의한 피해자의 심리적 피해',
      'detail':
          '- 사이버폭력의 피해자들은 사건 이후, 극심한 우울증을 보이고 극단적으로는 자살을 하는 등 심각한 결과를 초래한다.\n사이버폭력으로 인한 학생 피해자의 심리적인 영향은 학교를 결석하거나, 낮은 성적을 받고, 낮은 집중력을 보이는 것과 유의미한 상관이 나타났고 또한 사회 불안을 유의미하게 증가시킨다는 결과를 나타냈다. \n사이버폭력의 가해자를 아는 경우와 모르는 경우로 구분하여 심리사회적인 문제를 측정하였다. 그 결과 가해자를 아는 경우에는 공격적인 행동이나 사회적 문제에서 유의미한 결과가 나타났고, 가해자를 모르는 경우에는 사회적 문제와 우울에서 유의미한 결과를 나타냈다. 결국 가해자가 아는 사람이든 모르는 사람이든 피해자의 심리에 상당한 부정적 영향을 미치는 것으로 나타났다.',
      'agree': false,
    },
    {
      'name': '컴퓨터 범죄',
      'summary': '형법 제314조(업무방해), 형법 제347조의2(컴퓨터 등 사용사기)',
      'detail':
          '-  제314조(업무방해) \n1-1. 정의 : ①항 : 제313조의 방법 또는 위력으로써 사람의 업무를 방해한 자\n1-2. 처벌 : 5년 이하의 징역 또는 1천500만원 이하의 벌금에 처한다.  <개정 1995. 12. 29.>\n\n2-1. 정의 : ②항 : 컴퓨터등 정보처리장치 또는 전자기록등 특수매체기록을 손괴하거나 정보처리장치에 허위의 정보 또는 부정한 명령을 입력하거나 기타 방법으로 정보처리에 장애를 발생하게 하여 사람의 업무를 방해한 자\n2-2. 처벌 : 제1항의 형과 같다.(5년 이하의 징역 또는 1천500만원 이하의 벌금에 처한다.)                                                                <신설 1995. 12. 29.>\n\n- 제347조의2(컴퓨터등 사용사기)  \n1. 정의  : 컴퓨터등 정보처리장치에 허위의 정보 또는 부정한 명령을 입력하거나 권한 없이 정보를 입력ㆍ변경하여 정보처리를 하게 함으로써 재산상의 이익을 취득하거나 제3자로 하여금 취득하게 한 자\n2. 처벌 : 10년 이하의 징역 또는 2천만원 이하의 벌금에 처한다. [전문개정 2001. 12. 29.]',
      'agree': false,
    },
  ];
  final String _precautions =
      '본 서비스는 자살 유족들을 위한 소통 기능 및 정보를 제공합니다. 타인에게 과도한 불편함을 주는 표현은 삼가 주시길 바라며, 해당 내용은 신고 및 삭제 될 수 있습니다. 이용에 앞서, 서비스 관련 법률의 전문을 살펴보시기 바랍니다.';

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
                        '심해(心海)',
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
                                    '전문 보기',
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
                  '이용약관',
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
