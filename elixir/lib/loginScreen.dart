import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: new Container(
          child: Column(
        children: <Widget>[
          Text('Sign In'),
          new Form(
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email'),
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text('User Type: '),
            ],
          )
        ],
      )),
    );
  }
}
