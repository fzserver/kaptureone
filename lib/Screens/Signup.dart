import 'package:flutter/material.dart';

import 'Login.dart';
import '../widget/auth.dart';

class Signup extends StatefulWidget {
  Signup({this.auth});
  final BaseAuth auth;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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

  void _validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        // String userId =
        await widget.auth.createUserWithEmailAndPassword(_email, _password);
        // print("Register ${userId}");
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _signupitems(),
            ),
          ),
        ),
      );

  List<Widget> _signupitems() => <Widget>[
        Image(
          image: AssetImage("assets/images/logo.png"),
          width: 100.0,
          fit: BoxFit.contain,
        ),
        Text(
          "\"Say Cheese\"",
          style: TextStyle(fontSize: 20, fontFamily: 'Pacifico'),
          textAlign: TextAlign.center,
        ),
        Image(
          image: AssetImage("assets/images/signup_vector.png"),
          height: MediaQuery.of(context).size.height * 0.35,
          fit: BoxFit.contain,
        ),
        Text(
          "Create a new account",
          style: TextStyle(fontSize: 20.0, fontFamily: 'Pacifico'),
        ),
        Form(
          key: formKey,
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
                    hintText: "Confirm password",
                    contentPadding: EdgeInsets.all(8),
                    hintStyle:
                        TextStyle(color: Colors.grey, fontFamily: 'Pacifico'),
                  ),
                  obscureText: true,
                ),
              ),
              MaterialButton(
                  onPressed: _validateAndSubmit,
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
        InkWell(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Login());
              Navigator.pushReplacement(context, route);
            },
            child: RichText(
              text: TextSpan(
                text: 'Already have an account ?',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Pacifico'),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20.0,
                        color: Color(0xff03a9f4),
                        fontFamily: 'Pacifico'),
                  ),
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
        ),
      ];
}
