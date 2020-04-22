import 'package:flutter/material.dart';

class ActiveBookingCharges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          Text(
            "Fee Details",
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
                          flex: 2,
                          child: Text("Total Weight"),
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee"),
                        Text(
                          "₱28,784.80",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Other Fees"),
                        Text(
                          "N/A",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Valuation Charge"),
                        Text(
                          "N/A",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Web Admin Fee"),
                        Text(
                          "₱100.00",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Promo Code"),
                        Text(
                          "N/A",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Fees",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "₱28,884.80",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Declared Value",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        ButtonTheme(
                          height: 30.0,
                          child: FlatButton(
                            color: Color(0xffff4caf50),
                            onPressed: () {},
                            child: Text(
                              "Choose Payment",
                              style: TextStyle(color: Colors.white),
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
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Shipper Info",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                      'First Name'
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Last Name'
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Phone Number'
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Telephone Number'
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Receiver Info",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                        'First Name'
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Last Name'
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Phone Number'
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Telephone Number'
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Promo Code",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
    ;
  }
}
