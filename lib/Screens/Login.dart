import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Signup.dart';
import '../widget/auth.dart';

class Login extends StatefulWidget {
  Login({this.auth});
  final BaseAuth auth;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        String userId =
            await widget.auth.signInWithEmailAndPassword(_email, _password);
        // print("Signed in ${userId}");
      } catch (e) {
        // print("error $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _loginitems(),
            ),
          ),
        ),
      );

  List<Widget> _loginitems() => <Widget>[
        Image(
          image: AssetImage("assets/images/logo.png"),
          width: 100.0,
          fit: BoxFit.contain,
        ),
        Text(
          "\"The best Photographers in town\"\n–now just a fingertip away–",
          style: TextStyle(fontSize: 20, fontFamily: 'Pacifico'),
          textAlign: TextAlign.center,
        ),
        Image(
          image: AssetImage("assets/images/login_vector.png"),
          width: 250.0,
          fit: BoxFit.contain,
        ),
        Text(
          "Sign in",
          style: TextStyle(fontSize: 20.0, fontFamily: 'Pacifico'),
        ),
        Form(
          key: formKey,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    validator: (value) =>
                        value.isEmpty ? "Email can't be empty" : null,
                    onSaved: (value) => _email = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      hintText: "Enter E-mail or phone number",
                      contentPadding: EdgeInsets.all(8),
                      hintStyle:
                          TextStyle(color: Colors.grey, fontFamily: 'Pacifico'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    validator: (value) =>
                        value.isEmpty ? "Password can't be empty" : null,
                    onSaved: (value) => _password = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      hintText: "Enter password",
                      contentPadding: EdgeInsets.all(8),
                      hintStyle:
                          TextStyle(color: Colors.grey, fontFamily: 'Pacifico'),
                    ),
                    obscureText: true,
                  ),
                ),
                RaisedButton(
                    onPressed: validateAndSubmit,
                    color: Color(0xff03a9f4),
                    elevation: 0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: 'Pacifico'),
                    )),
              ],
            ),
          ),
        ),
        Text("or", style: TextStyle(fontSize: 20.0, fontFamily: 'Pacifico')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: _loginbutton(),
        ),
        InkWell(
          onTap: () {
            Route route = MaterialPageRoute(
                builder: (context) => Signup(
                      auth: Auth(),
                    ));
            Navigator.pushReplacement(context, route);
          },
          child: Text(
            "Create an account",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20.0,
                fontFamily: 'Pacifico'),
          ),
        ),
      ];

  List<Widget> _loginbutton() => <Widget>[
        SafeArea(
            child: Column(children: <Widget>[
          MaterialButton(
            onPressed: () => {},
            color: Color(0xff8190dd),
            elevation: 0,
            textColor: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: SvgPicture.asset("assets/images/facebook.svg",
                      width: 20.0),
                ),
                Text(
                  "Continue with Facebook",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () => {},
            color: Color(0xff03a9f4),
            elevation: 0,
            textColor: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child:
                      SvgPicture.asset("assets/images/google.svg", width: 20.0),
                ),
                Text(
                  "Continue with Google",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ]))
      ];
}
