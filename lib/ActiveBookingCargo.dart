import 'package:flutter/material.dart';

class ActiveBookingCargo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          Text(
            "Cargo Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Shipment type"),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Full Container",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff616161),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Container type"),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "10 DC",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff616161),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Mode of Service"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Door to Door",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff616161),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Description"),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Ceb-Man",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff616161),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Weight"),
                        ),
                        Expanded(
                          flex: 5,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "1000.00 kg ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff616161),
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(Icons.edit, color: Color(0xff0095B9), size: 16,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Quantity"),
                        ),
                        Expanded(
                          flex: 4,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "5 ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff616161),
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(Icons.edit, color: Color(0xff0095B9), size: 16,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Fragile"),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "No",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff616161),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Hazardous"),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "No",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff616161),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Divider(color: Colors.black,),
          SizedBox(height: 5,),
          Text(
            "Total Declared Value",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(flex: 1, child: Text("PhP ₱1.00"))
                    ],)
                  ],
                ),
              )
            ],
          ),
          Divider(color: Colors.black,),
          SizedBox(height: 5,),
          Text(
            "Photos",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Divider(color: Colors.black,),
          SizedBox(height: 5,),
          Text(
            "Pickup and Delivery",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child: Text("Pickup/Acceptance Date:"),
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          "03/12/2020 06:30AM",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text("Delivery/Arrival Date:"),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "03/12/2020 06:30AM",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],),
          Divider(color: Colors.black,),
          Text(
            "Notes",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(flex: 1, child: Text("1"))
                    ],)
                  ],
                ),
              )
            ],
          ),
          Divider(color: Colors.black,),
        ],
      ),
    );
  }
}
