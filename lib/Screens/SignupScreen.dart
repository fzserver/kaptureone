import 'package:flutter/material.dart';
import '../Screens/LoginScreen.dart';
import '../Screens/OtpScreen.dart';


class SignupScreen extends StatelessWidget {
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
                child: Text("\"Say Cheese\"", style: TextStyle(fontSize: 25,fontFamily: 'Pacifico'),),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Image(
                  image: AssetImage("assets/images/signup_vector.png"),
                  height: 250,
                ),
              ),
              Text(
                "Create a new account",
                style: TextStyle(
                    fontSize: 20.0,fontFamily: 'Pacifico'),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Enter email or phone number",
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(
                        color: Colors.grey,fontFamily: 'Pacifico'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Confirm password",
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(
                        color: Colors.grey,fontFamily: 'Pacifico'),
                  ),
                  obscureText: true,
                ),
              ),
              RaisedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpScreen()));
              },
                color: Color(0xff03a9f4),
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 6.0),
                child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 15.0,fontFamily: 'Pacifico'),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
