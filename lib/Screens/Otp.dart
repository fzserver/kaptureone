import 'package:flutter/material.dart';

import 'Login.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _otpitems(),
        ),
      ),
    ),
  );

  List<Widget> _otpitems() => <Widget>[
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
      image: AssetImage("assets/images/code_vector.png"),
      height: MediaQuery.of(context).size.height * 0.35,
      fit: BoxFit.contain,
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        "\"An e-mail is shared with you with a code\"",
        style: TextStyle(
            fontSize: 20.0,color: Color(0xff03a9f4),fontFamily: 'Pacifico'),
      ),
    ),
    Text(
      "Enter the code in your e-mail",
      style: TextStyle(fontSize: 20.0, fontFamily: 'Pacifico'),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)),
          hintText: "Enter the code",
          contentPadding: EdgeInsets.all(8),
          hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Pacifico'),
        ),
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
    InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Login()));
        },
        child: RichText(
          text: TextSpan(
            text: 'Already have an account ?',
            style: TextStyle(
                decoration: TextDecoration.underline, fontSize: 20.0, color: Colors.black,fontFamily: 'Pacifico'),
            children: <TextSpan>[
              TextSpan(text: 'Sing in', style: TextStyle(
                  decoration: TextDecoration.underline, fontSize: 20.0, color: Color(0xff03a9f4),fontFamily: 'Pacifico'),),
            ],
          ),
        )
    ),
  ];
}
