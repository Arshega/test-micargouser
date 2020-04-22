import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:groovin_widgets/groovin_widgets.dart';
import 'package:micargouser/BookingList.dart';
import 'ActiveBookings.dart';

class ActiveBookingList extends StatelessWidget {
  final List<BookingList> _allBookings = BookingList.listBookings();

  @override
  Widget build(BuildContext context) {
    var value;

    final dropDown = Padding(
      padding: EdgeInsets.only(left: 10),
      child: OutlineDropdownButton(
        isDense: true,
        items: [
          DropdownMenuItem(
            child: Text("Newest"),
            value: "Newest",
          ),
          DropdownMenuItem(
            child: Text("Oldest"),
            value: "Oldest",
          ),
        ],
        isExpanded: true,
        value: value,
        onChanged: (value) {
          print(value);
        },
      ),
    );

    BoxDecoration myBoxDecoration() {
      return BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(5)));
    }

    Widget buildCustomPrefixIcon(IconData iconData) {
      return Container(
        width: 0,
        alignment: Alignment(-0.99, 0.0),
        child: Icon(
          iconData,
        ),
      );
    }

    final theme = Theme.of(context);
    final search = Theme(
      data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
      child: Container(
        height: 48,
        padding: const EdgeInsets.all(10.0),
        decoration: myBoxDecoration(),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            icon: Icon(Icons.search),
          ),
        ),
      ),
    );

    Widget build(BuildContext context) {
      return new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Administrative",
                style: new TextStyle(
                    color: new Color.fromARGB(255, 117, 117, 117),
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold)),
            new Divider(
              color: Colors.red,
            ),
            new Text("text")
          ],
        ),
      );
    }

    ;

    // TODO: implement build
    return new Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: search,
                  ),
                  Expanded(
                    flex: 4,
                    child: dropDown,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 16),
                  child: getHomePageBody(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allBookings.length,
      itemBuilder: bookingList,
      padding: EdgeInsets.all(0.0),
    );
  }

  Widget bookingList(BuildContext context, int index) {
    return new Card(
      elevation: 2,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).pushNamed(ActiveBookings.tag);
        },
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    _allBookings[index].bookingStatus,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    _allBookings[index].bookingID,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    _allBookings[index].bookingCargoDetails,
                    style: TextStyle(
                      color: Color(0xffFF7F8C8D),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Divider(),
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          child: Text(
                            _allBookings[index].bookingFromAddress,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFF7F8C8D),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          child: Text(
                            _allBookings[index].bookingToAddress,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFF7F8C8D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
