import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ActiveBookingTracking extends StatelessWidget {
  GoogleMapController mapController;

  BitmapDescriptor pickup;
  BitmapDescriptor destination;

  final LatLng _center = const LatLng(10.857603, 123.908101);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  BitmapDescriptor customIcon;

  final Set<Marker> _markers = {};
  final Set<Polyline>_polyline={};


  List<LatLng> latlng = List();
  LatLng froms = LatLng(10.857603, 123.908101);
  LatLng tos = LatLng(14.599379, 120.984345);


  //10.857603, 123.908101 Tabuelan
  //14.599379, 120.984345 Manila

  @override
  Widget build(BuildContext context) {
    latlng.add(froms);
    latlng.add(tos);

    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/images/from.png'),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "TABUELAN, TABUELAN, CEBU, PHILIPPINES",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/images/to.png'),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Manila, Manila, Metro Manila, Philippines",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xffFF7F8C8D),
                      height: 50,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(
                                'assets/images/ic_package_green.png'),
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "TABUELAN CEBU, PHILIPPINES",
                            ),
                          ),
                        ],
                      ),
                    ), // he
                  ],
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('assets/images/profile_green.png'),
                          width: 55,
                          height: 55,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.ltr,
                            children: [
                              Text(
                                'NOT YET ASSIGNED',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Contact No. --'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Plate No. --'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment(-1.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                        'Tracking ID: ADNADIU78678'
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Package: 10 dc - 1000.00 kg'
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'RDD: Mar 17, 2020. 0 Days', style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}


