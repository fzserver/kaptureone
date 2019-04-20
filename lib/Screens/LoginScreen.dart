import 'package:flutter/material.dart';
import '../widget/AuthenticationButton.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          color:  Colors.blue,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height*0.3,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 30.0,fontStyle: FontStyle.italic),),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(5.0),),
                          filled: true,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(5.0),),
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: RaisedButton(onPressed: (){}, child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic),), color: Colors.amber,),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10.0),
                      child: Text("or", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                    ),
                    AuthenticationButton(),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                          onTap: (){},
                          child: Text("Create an account", style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}