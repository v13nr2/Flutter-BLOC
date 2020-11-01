import 'package:aztira/src/ui/home.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Nanang Rustianto"),
            accountEmail: Text("nanang.direktur@gmail.com"),
            otherAccountsPictures: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Colors.white,
                    size: 36.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<bool>(builder: (context) => Home()),
                    );
                  })
            ],
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              backgroundImage: AssetImage("assets/profile_pic.jpg"),
            ),
          ),
          ListTile(
              leading: Icon(Icons.inbox),
              title: Text(
                "Inbox",
                key: ValueKey(SideDrawerKeys.INBOX),
              ),
              onTap: () {}),
          ListTile(
              onTap: () {},
              leading: Icon(Icons.calendar_today),
              title: Text(
                "Today",
                key: ValueKey(SideDrawerKeys.TODAY),
              )),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.calendar_today),
            title: Text(
              "Next 7 Days",
              key: ValueKey(SideDrawerKeys.NEXT_7_DAYS),
            ),
          ),
        ],
      ),
    );
  }
}

class SideDrawerKeys {
  static const DRAWER = 'drawer';
  static const DRAWER_LABELS = 'drawerLabels';
  static const ADD_LABEL = 'addLabel';
  static const DRAWER_PROJECTS = 'drawerProjects';
  static const ADD_PROJECT = 'addProject';
  static const TODAY = 'today';
  static const INBOX = 'inbox';
  static const NEXT_7_DAYS = 'next7Days';
}