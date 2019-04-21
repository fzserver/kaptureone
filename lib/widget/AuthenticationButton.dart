import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum _authTypes { fb, google, phone }

Map _authDetails = {
  _authTypes.google: {
    'color': Color(0xffef8a8a),
    'text': 'Sign in with Google',
    'svg': "assets/images/google.svg"
  },
  _authTypes.fb: {
    'color': Color(0xff8190dd),
    'text': 'Sign in with Facbook',
    'svg': "assets/images/facebook.svg"
  },
};

class AuthenticationButton extends StatefulWidget {

  @override
  State<AuthenticationButton> createState() {
    return AuthenticationButtonState();
  }
}

class AuthenticationButtonState extends State<AuthenticationButton> {

  @override
  void initState() {
    super.initState();

  }

  Widget _buildLoginButton(_authTypes type) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        onPressed: () {},
        color: _authDetails[type]['color'],
        child:  Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05),
                    child: SvgPicture.asset(_authDetails[type]['svg'], width: 30)),
                Text(
                    (_authDetails[type]['text']),
                    style: TextStyle(color: Colors.white, fontSize: 15.0, fontStyle: FontStyle.italic)),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 35.0, right: 35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildLoginButton(_authTypes.fb),
          _buildLoginButton(_authTypes.google),
        ],
      ),
    );

  }
}
