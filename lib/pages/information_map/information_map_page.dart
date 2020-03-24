import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:solution_challenge/pages/information_map/information_map_help_page.dart';
import 'package:solution_challenge/pages/information_map/information_map_community_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:firebase_storage/firebase_storage.dart';

class MapData {
  final String name;
  final String regionCity;
  final String address;
  final String time;
  final String defaultActivity;
  final String activity;
  final String homepage;
  final String telephone;
  final List<String> images;

  MapData({
    this.name = '위치를 클릭하여 정보를 확인하세요',
    this.regionCity = '',
    this.address = '-',
    this.time = '-',
    this.defaultActivity =
        '모임을 통해 자살유가족들이 심리적·사회적 어려움과 고통속에서 벗어나 희망적인 삶을 되찾는 시간',
    this.activity = '-',
    this.homepage = '-',
    this.telephone = '-',
    this.images = const ['logo_lg.png'],
  });
}

class InformationMapPage extends StatefulWidget {
  @override
  _InformationMapPageState createState() => _InformationMapPageState();
}

class _InformationMapPageState extends State<InformationMapPage> {
  final BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );

  bool checkDialog = false;
  MapData mapData;

  @override
  void initState() {
    super.initState();
    mapData = MapData();
  }

  @override
  Widget build(BuildContext context) {
    if (!checkDialog) {
      Future.delayed(Duration.zero, () => showAlert(context));
      checkDialog=true;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SlidingUpPanel(
        controller: PanelController(),
        minHeight: 100.0,
        maxHeight: 700.0,
        color: Colors.transparent,
        boxShadow: [],
        panelBuilder: _scrollingPage,
        body: _bodyPage(context),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "자조모임을 통해 함께 나누고, 소통해보는건 어떨까요?",
                style: TextStyle(
                  fontFamily: 'MapoFlowerIsland',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
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
                  Expanded(
                    child: Text(
                      mapData.name + ': ' + mapData.regionCity,
                      style: TextStyle(
                        fontFamily: 'MapoFlowerIsland',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _informationTag(Icons.map, mapData.address),
            _informationTag(Icons.access_time, mapData.time),
            _informationTag(Icons.people, mapData.defaultActivity),
            _divider(),
            SizedBox(height: 32.0),
            _informationTag(Icons.more_horiz, mapData.activity),
            _divider(),
            SizedBox(height: 32.0),
            _informationTag(Icons.link, mapData.homepage),
            _informationTag(Icons.call, mapData.telephone),
            _divider(),
            SizedBox(height: 32.0),
            _informationTag(Icons.image, ''),
            SizedBox(
              height: 180.0,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: PageController(viewportFraction: 0.9),
                itemCount: mapData.images.length,
                itemBuilder: (context, index) => _pageItem(index),
              ),
            ),
            SizedBox(height: 64.0),
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

  _divider() {
    return Divider(
      indent: 16.0,
      endIndent: 16.0,
      color: Colors.white,
      thickness: 0.5,
    );
  }

  _pageItem(index) {
    return FutureBuilder<List<String>>(
      future: _getURLs(mapData.images),
      builder: (context, snapshot) {
        Widget child;

        if (snapshot.hasData) {
          child = Image.network(snapshot.data[index]);
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          child = Text('이미지를 가져오는 중...');
        }

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _bodyPage(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          _googleMap(),
          Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkResponse(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  InformationMapCommunityPage(),
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
                            Icons.public,
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
        ],
      ),
    );
  }

  Widget _googleMap() {
    Completer<GoogleMapController> _controller = Completer();
    Set<Marker> _markerLocations = Set<Marker>();

    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('InformationMap').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          for (DocumentSnapshot document in snapshot.data.documents) {
            _markerLocations.add(Marker(
              markerId: MarkerId(document.documentID),
              position: LatLng(document['Latitude'], document['longitude']),
              icon: BitmapDescriptor.defaultMarker,
              onTap: () {
                if (document != null) {
                  List<String> images = List<String>();
                  images.add(document['logo']);

                  for (var imagePath in document['image'] ?? []) {
                    images.add(imagePath);
                  }

                  setState(() {
                    mapData = MapData(
                      name: document['name'],
                      regionCity: document['region_city'],
                      address: document['address'],
                      time: document['time'],
                      activity: document['activity'] ?? '홈페이지를 참고하세요',
                      homepage: document['homepage'],
                      telephone: document['telephone'],
                      images: images,
                    );
                  });
                }
              },
            ));
          }

          return GoogleMap(
            mapType: MapType.normal,
            markers: _markerLocations,
            initialCameraPosition: CameraPosition(
              target: LatLng(36.684602, 127.896608),
              zoom: 7.0,
            ),
            onMapCreated: (controller) {
              _controller.complete(controller);
            },
          );
        }
        return Container(
          color: Colors.white,
        );
      },
    );
  }
}

Future<List<String>> _getURLs(List<String> paths) async {
  List<String> result = List<String>();

  final FirebaseStorage storage = FirebaseStorage(
    storageBucket: 'gs://flutter-globalchallenge.appspot.com',
  );

  for (var path in paths) {
    final String url = await storage.ref().child(path).getDownloadURL();
    result.add(url);
  }
  return result;
}