import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  final List<String> userInfo;
  ProfileCard({this.userInfo});

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double screenHeight(BuildContext context,
      {double dividedBy = 1, double reducedBy = 0.0}) {
    return (screenSize(context).height - reducedBy) / dividedBy;
  }

  double screenHeightExcludingToolbar(BuildContext context,
      {double dividedBy = 1}) {
    return screenHeight(context,
        dividedBy: dividedBy, reducedBy: kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: screenHeightExcludingToolbar(context, dividedBy: 3.50),
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: ListView(
            children: [
              ListTile(
                tileColor: Colors.grey[300],
                leading: Icon(Icons.perm_identity_rounded),
                title: Text(widget.userInfo[0]),
              ),
              ListTile(
                tileColor: Colors.white,
                leading: Icon(Icons.emoji_emotions_rounded),
                title: Text(widget.userInfo[1]),
              ),
              ListTile(
                tileColor: Colors.grey[300],
                leading: Icon(Icons.email_rounded),
                title: Text(widget.userInfo[2]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
