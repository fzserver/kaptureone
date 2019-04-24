import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Screens/SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40.0),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text("\"The best Photographers in town\"", style: TextStyle(fontSize: 25,fontFamily: 'Pacifico'),),
              ),
              Text("-now just a fingertip away-", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100,fontFamily: 'Pacifico'),),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Image(
                  image: AssetImage("assets/images/login_vector.png"),
                ),
              ),
              Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Pacifico'),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Enter E-mail or phone number",
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(
                        color: Colors.grey,fontFamily: 'Pacifico'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Enter password",
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(
                      color: Colors.grey,fontFamily: 'Pacifico'),
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text("or",
                    style: TextStyle(
                        fontSize: 20.0,fontFamily: 'Pacifico')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){},
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset("assets/images/google.svg", width: 20,),
                          ),
                          Text("Continue with Google", style: TextStyle(color: Colors.white,fontSize: 12),),
                        ],
                      ),
                      color: Color(0xff03a9f4),
                      elevation: 0,
                    ),
                    RaisedButton(
                      onPressed: (){},
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset("assets/images/facebook.svg", width: 20,),
                          ),
                          Text("Continue with Facebook", style: TextStyle(color: Colors.white, fontSize: 12),),
                        ],
                      ),
                      color: Color(0xff8190dd),
                      elevation: 0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 20.0,fontFamily: 'Pacifico'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
