import 'package:flutter/material.dart';
import 'ActiveBookingTracking.dart';
import 'ActiveBookingCargo.dart';
import 'ActiveBookingCharges.dart';

class ActiveBookings extends StatefulWidget {
  static String tag = 'activebookings-page';
  @override
  _ActiveBookingsState createState() => new _ActiveBookingsState();
}

class _ActiveBookingsState extends State<ActiveBookings> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Color(0xffff4caf50),
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: new Text(
        '6FB92851B4C5',
        style: TextStyle(color: Colors.white),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: new DefaultTabController(
        length: 4,
        child: new Column(
          children: <Widget>[
            new Container(
              constraints: BoxConstraints(maxHeight: 150.0),
              height: 48.0,
              child: new Material(
                color: Color(0xffEBEBEB),
                child: new TabBar(
                  indicatorColor: Color(0xffff4caf50),
                  labelColor: Color(0xffff4caf50),
                  unselectedLabelColor: Color(0xff868686),
                  tabs: [
                    new Text("Tracking"),
                    new Text("Cargo"),
                    new Text("Charges"),
                    new Text("Message"),
                  ],
                ),
              ),
            ),
            new Expanded(
              child: new TabBarView(
                children: [
                  ActiveBookingTracking(),
                  ActiveBookingCargo(),
                  ActiveBookingCharges(),
                  new Text("Message"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
