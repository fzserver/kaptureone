import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
              hintText: "Enter E-mail or phone number",
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Pacifico'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
              hintText: "Enter password",
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Pacifico'),
            ),
            obscureText: true,
          ),
        ),
        MaterialButton(
            onPressed: () => {},
            color: Color(0xff03a9f4),
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
            child: Text(
              "Submit",
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0, fontFamily: 'Pacifico'),
            )),
        Text("or", style: TextStyle(fontSize: 20.0, fontFamily: 'Pacifico')),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: _loginbutton(),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Signup()));
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
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: MaterialButton(
            onPressed: () => {},
            color: Color(0xff03a9f4),
            elevation: 0,
            minWidth: double.infinity,
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
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: MaterialButton(
            onPressed: () => {},
            color: Color(0xff8190dd),
            elevation: 0,
            minWidth: double.infinity,
            textColor: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child:
                      SvgPicture.asset("assets/images/facebook.svg", width: 20.0),
                ),
                Text(
                  "Continue with Facebook",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ];
}
