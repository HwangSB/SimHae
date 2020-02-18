import 'package:flutter/material.dart';

class TosDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      '취소',
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '인터넷 명예훼손',
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 24,
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  '정보통신망 이용촉진 및 정보보호 등에 관한 법률',
                  style: TextStyle(
                    fontFamily: 'MapoFlowerIsland',
                    fontSize: 16,
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '이용자는 명예훼손 등 타인의 권리를 침해하는 정보를 정보통신망에 유통시켜서는 안 됩니다(규제「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제44조제1항). ※ “이용자”란 정보통신서비스 제공자가 제공하는 정보통신서비스를 이용하는 사람을 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제4호). ※ “정보통신망”이란 전기통신설비를 이용하거나 전기통신설비와 컴퓨터 및 컴퓨터의 이용기술을 활용하여 정보를 수집·가공·저장·검색·송신 또는 수신하는 정보통신체제를 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제1호). ‘전기통신설비’란 유선·무선·광선 및 기타의 전자적 방식에 의하여 부호·문언·음향 또는 영상 - 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 사실을 드러내어 다른 사람의 명예를 훼손한 자는 3년 이하의 징역 또는 3천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제1항). ㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반해 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항). - 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 거짓의 사실을 드러내어 다른 사람의 명예를 훼손한 자는 7년 이하의 징역, 10년 이하의 자격정지 또는 5천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제2항). ㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반하여 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).',
                        style: TextStyle(
                          fontFamily: 'MapoFlowerIsland',
                          fontSize: 16,
                          height: 1.75,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: const Color(0xFFAEE6DD),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: Text(
                          '인지하고 있습니다.',
                          style: TextStyle(
                            fontFamily: 'MapoFlowerIsland',
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
