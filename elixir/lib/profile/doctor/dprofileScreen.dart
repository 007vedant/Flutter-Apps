import 'package:flutter/material.dart';
import 'package:elixir/profile/common/profileCard.dart';

class DProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DProfileScreenState();
  }
}

class _DProfileScreenState extends State<DProfileScreen> {
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
              leading: Icon(Icons.person_add_rounded),
              title: Text("Add Patient"),
              onTap: () {
                print("add patient pressed");
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
              userInfo: ["85D4893491", "John Doe", "johndoe@gmail.com"],
            ),
          ],
        ),
      ),
    );
  }
}
