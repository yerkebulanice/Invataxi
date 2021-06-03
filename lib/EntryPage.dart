import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({Key key}) : super(key: key);

  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  Completer<GoogleMapController> _controller = Completer();
  // static const LatLng _center = const LatLng(51.2190231, 51.3894742);

  CameraPosition randomPosition =
      CameraPosition(target: LatLng(51.2454558, 51.4245345), zoom: 16);
  CameraPosition myPosition =
      CameraPosition(target: LatLng(51.2130476, 51.3740634), zoom: 19);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Откуда забрать?',
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(
            Icons.reorder_outlined,
            size: 28,
          ),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: randomPosition,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 140),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        // padding: EdgeInsets.only(bottom: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.green[100].withOpacity(0.5),
                          radius: 155,
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 60,
                            color: Colors.green,
                          ),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.green,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topRight,
                    child: RawMaterialButton(
                      onPressed: () {},
                      // elevation: 2.0,
                      fillColor: Colors.green,
                      child: Icon(
                        Icons.favorite_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      shape: CircleBorder(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 170),
                    alignment: Alignment.bottomRight,
                    child: RawMaterialButton(
                      onPressed: () {},
                      // elevation: 2.0,
                      fillColor: Colors.green,
                      child: Icon(
                        Icons.send_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    padding: EdgeInsets.only(right: 10),
                    color: Colors.grey[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'A',
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.green,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Гумара Караша 33/1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'г. Уральск',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 62,
                    color: Colors.green,
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Оформить заказ',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> _goToMyPosition() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(myPosition));
  // }
}
