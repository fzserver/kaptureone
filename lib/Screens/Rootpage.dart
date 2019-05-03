import 'package:flutter/material.dart';
import '../Screens/Login.dart';
import '../widget/auth.dart';
import '../Screens/HomeScreen.dart';

class RootPage extends StatefulWidget {
  RootPage({this.auth});
  final BaseAuth auth;
  @override
  State<StatefulWidget> createState() => RootPageState();
}

enum AuthStatus { notSignedIn, signedIn }

class RootPageState extends State<RootPage> {
  AuthStatus _authStatus = AuthStatus.notSignedIn;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (_authStatus) {
      case AuthStatus.notSignedIn:
        return Login(auth: widget.auth);
      case AuthStatus.signedIn:
        return HomeScreen();
    }
  }
}
