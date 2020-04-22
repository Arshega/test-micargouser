import 'package:flutter/material.dart';
import 'ActiveBookingList.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  final drawerItems = [
    new DrawerItem("New Booking", LineAwesomeIcons.dropbox),
    new DrawerItem("Active Bookings", LineAwesomeIcons.truck),
    new DrawerItem("Messages", LineAwesomeIcons.envelope),
    new DrawerItem("Notifications", LineAwesomeIcons.bell),
    new DrawerItem("History", LineAwesomeIcons.history),
    new DrawerItem("Profile", LineAwesomeIcons.user),
    new DrawerItem("Logout", LineAwesomeIcons.sign_out),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return null;
      case 1:
        return new ActiveBookingList();
      case 2:
        return null;
      case 3:
        return null;
      case 4:
        return null;
      case 5:
        return null;
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: Icon(d.icon, color: Colors.white),
        title: new Text(
          d.title,
          style: TextStyle(color: Colors.white),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffff4caf50),
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(
          widget.drawerItems[_selectedDrawerIndex].title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: Center(
                child: new DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png")
                      )
                  ),
                  child: Text("USER NAMES"),
                ),
              ),
          color: Color(0xff4cae50),
            ),
            new Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff4cae50),
              child: new Column(
                children: drawerOptions,
              ),
            ),
            Divider()
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
