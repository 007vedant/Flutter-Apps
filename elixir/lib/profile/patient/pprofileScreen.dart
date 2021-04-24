import 'package:flutter/material.dart';
import 'package:elixir/profile/common/profileCard.dart';

class PProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PProfileScreenState();
  }
}

class _PProfileScreenState extends State<PProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Elixir'),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notification_important_rounded),
              title: Text("Notifications"),
              onTap: () {
                print("notifications pressed");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                print("logout pressed");
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ProfileCard(
              userInfo: ["86ID29032", "John Doe Patient", "johndoe@gmail.com"],
            ),
          ],
        ),
      ),
    );
  }
}
