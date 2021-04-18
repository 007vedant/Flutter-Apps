import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:elixir/loginScreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  String _name, _email, _password, _cpassword;
  String _radioValue = "patient";

  void _radioHandler(String user) {
    setState(() {
      _radioValue = user;

      switch (_radioValue) {
        case "patient":
          break;
        case "doctor":
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Elixir"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 35),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration:
                    InputDecoration(labelText: 'Name', hintText: 'Enter name'),
                onChanged: (name) {
                  _name = name;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email', hintText: 'Enter valid email id'),
                onChanged: (email) {
                  _email = email;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password', hintText: 'Enter password'),
                onChanged: (password) {
                  _password = password;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Enter confirm password'),
                onChanged: (cpassword) {
                  _cpassword = cpassword;
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 10, bottom: 0),
              child: Row(
                children: [
                  Text(
                    'User Type:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Radio(
                    value: "patient",
                    groupValue: _radioValue,
                    onChanged: _radioHandler,
                  ),
                  Text(
                    'Patient',
                    style: TextStyle(fontSize: 20),
                  ),
                  Radio(
                    value: "doctor",
                    groupValue: _radioValue,
                    onChanged: _radioHandler,
                  ),
                  Text(
                    'Doctor',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  elevation: 5,
                ),
                child: Text('Register'),
                onPressed: () {
                  if (_password != _cpassword) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Icon(Icons.error, color: Colors.red),
                          content: Text("      Passwords do not match."),
                        );
                      },
                    );
                  } else {
                    print(
                        'Name: $_name\n Email: $_email\n Password: $_password\n User: $_radioValue');
                  }
                },
              ),
            ),
            SizedBox(
              height: 130,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <InlineSpan>[
                TextSpan(
                    text: 'Have an Account? ',
                    style: TextStyle(color: Colors.black87)),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  text: 'Login',
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
