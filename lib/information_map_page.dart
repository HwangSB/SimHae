import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:solution_challenge/information_map_help_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:firebase_storage/firebase_storage.dart';

class InformationMapPage extends StatefulWidget {
  @override
  _InformationMapPageState createState() => _InformationMapPageState();
}

class _InformationMapPageState extends State<InformationMapPage> {
  final BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );

  DocumentSnapshot _document;

  static Future<dynamic> loadImage(String image) async {
    return await FirebaseStorage.instance.ref().child(image).getDownloadURL();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SlidingUpPanel(
        controller: PanelController(),
        minHeight: 100.0,
        maxHeight: 850.0,
        color: Colors.transparent,
        boxShadow: [],
        panelBuilder: _scrollingPage,
        body: _bodyPage(context),
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
                      (_document == null ? '' : _document['name']) +
                          " " +
                          (_document == null ? '' : _document['region_city']),
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
            _informationTag(
                Icons.map, _document == null ? '' : _document['address']),
            _informationTag(
                Icons.access_time, _document == null ? '' : _document['time']),
            _informationTag(Icons.people, '활동 소개~~'),
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
                Icons.link, _document == null ? '' : _document['homepage']),
            _informationTag(
                Icons.call, _document == null ? '' : _document['telephone']),
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
                      child: Center(
                        child: Text('hello'),
                      ),
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
          _googleMap(),
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

  Widget _googleMap() {
    //얘가 실질적으로 핀을 꼽는 곳임

    Completer<GoogleMapController> _controller = Completer();
    Set<Marker> _markers = Set<Marker>();

    Set<Marker> _markerLocations = Set<Marker>();

    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('InformationMap').snapshots(),
      builder: (context, snapshot) {
        for (DocumentSnapshot document in snapshot.data.documents) {
          if (document['Latitude'] == null) print(document.data);
          _markerLocations.add(Marker(
              markerId: MarkerId(document.documentID),
              position: LatLng(document['Latitude'], document['longitude']),
              icon: BitmapDescriptor.defaultMarker,
              onTap: () {
                setState(() {
                  _document = document;
                });
              }));
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
      },
    );
  }
}
