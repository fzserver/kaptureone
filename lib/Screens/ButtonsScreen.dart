import 'package:flutter/material.dart';
import '../Screens/LoginScreen.dart';
import '../Screens/LocationScreen.dart';
import '../Screens/HomeScreen.dart';
import '../Screens/MarriageScreen.dart';

class ButtonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text("Login Screen"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocationScreen()));
              },
              child: Text("Location Screen"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text("Home Screen"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MarriageScreen()));
              },
              child: Text("Marriage Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
