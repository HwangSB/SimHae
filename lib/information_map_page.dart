import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:solution_challenge/information_map_help_page.dart';

class InformationMapPage extends StatelessWidget {
  final BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SlidingUpPanel(
        controller: PanelController(),
        minHeight: 300.0,
        maxHeight: 850.0,
        color: Colors.transparent,
        boxShadow: [],
        panelBuilder: _pageViewPage,
        body: _bodyPage(context),
      ),
    );
  }

  Widget _pageViewPage(ScrollController scrollController) {
    return PageView.builder(
      controller: PageController(),
      physics: ClampingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) => _scrollingPage(scrollController),
    );
  }

  Widget _scrollingPage(ScrollController scrollController) {
    return SingleChildScrollView(
      controller: scrollController,
      physics: ClampingScrollPhysics(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: radius,
          color: Color(0xFF87CED1),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Divider(
              indent: 150.0,
              endIndent: 150.0,
              color: Colors.white,
              height: 5.0,
              thickness: 1.0,
            ),
            Divider(
              indent: 150.0,
              endIndent: 150.0,
              color: Colors.white,
              height: 5.0,
              thickness: 1.0,
            ),
            Divider(
              indent: 150.0,
              endIndent: 150.0,
              color: Colors.white,
              height: 5.0,
              thickness: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    '채움 (부모) _수원시 자살예방센터',
                    style: TextStyle(
                      fontFamily: 'MapoFlowerIsland',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            _informationTag(
                Icons.map, '경기도 수원시 팔달구 동말로 47번길 17 해피마음터 3층 \'소망실\''),
            _informationTag(Icons.access_time, '매월 둘째주 토요일 오전 10시'),
            _informationTag(Icons.people, '활동소개 한 줄'),
            Divider(
              indent: 16.0,
              endIndent: 16.0,
              color: Colors.white,
              thickness: 0.5,
            ),
            SizedBox(
              height: 32.0,
            ),
            _informationTag(Icons.more_horiz, '기타활동1\n\n기타활동2\n\n기타활동3'),
            Divider(
              indent: 16.0,
              endIndent: 16.0,
              color: Colors.white,
              thickness: 0.5,
            ),
            SizedBox(
              height: 32.0,
            ),
            _informationTag(
                Icons.link, 'http://www.csp.or.kr/consulting/online_list.asp'),
            _informationTag(Icons.call, '031-247-3279'),
            Divider(
              indent: 16.0,
              endIndent: 16.0,
              color: Colors.white,
              thickness: 0.5,
            ),
            SizedBox(
              height: 32.0,
            ),
            _informationTag(Icons.image, ''),
            SizedBox(
              height: 180.0,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: PageController(viewportFraction: 0.9),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.white,
                      ),
                      child: Center(child: Text('hello')),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 64.0,
            ),
          ],
        ),
      ),
    );
  }

  _informationTag(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Icon(
                icon,
                color: Color(0xFF87CED1),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'MapoFlowerIsland',
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyPage(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image(
              image: AssetImage('assets/images/information_map.png'),
              alignment: Alignment.topCenter,
            ),
          ),
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
                      color: Color(0xFF8CD4D5),
                    ),
                    iconSize: 28.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InformationMapHelpPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF8CD4D5),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x29000000),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
